DELIMITER //

CREATE TRIGGER trg_after_payment_success
AFTER UPDATE ON payments
FOR EACH ROW
BEGIN
    -- If payment status changed to 'success', update order status
    IF NEW.status = 'success' AND OLD.status <> 'success' THEN
        UPDATE orders
        SET status = 'processing'
        WHERE id = NEW.order_id;
    END IF;
END;
//

DELIMITER ;
