package com.company.store.model.dao;

import com.company.store.model.entities.Payment;

public interface PaymentDAO {

    Payment getPaymentById(int payment_id);

    boolean savePayment(Payment payment);
    boolean removePayment(int payment_id);
}
