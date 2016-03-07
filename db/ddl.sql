CREATE TABLE `paypal_express_payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kb_payment_method_id` varchar(255) DEFAULT NULL,
  `paypal_express_payer_id` varchar(255) DEFAULT NULL,
  `paypal_express_token` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `cc_first_name` varchar(255) DEFAULT NULL,
  `cc_last_name` varchar(255) DEFAULT NULL,
  `cc_type` varchar(255) DEFAULT NULL,
  `cc_exp_month` varchar(255) DEFAULT NULL,
  `cc_exp_year` varchar(255) DEFAULT NULL,
  `cc_number` varchar(255) DEFAULT NULL,
  `cc_last_4` varchar(255) DEFAULT NULL,
  `cc_start_month` varchar(255) DEFAULT NULL,
  `cc_start_year` varchar(255) DEFAULT NULL,
  `cc_issue_number` varchar(255) DEFAULT NULL,
  `cc_verification_value` varchar(255) DEFAULT NULL,
  `cc_track_data` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `kb_account_id` varchar(255) DEFAULT NULL,
  `kb_tenant_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_paypal_express_payment_methods_on_kb_account_id` (`kb_account_id`),
  KEY `index_paypal_express_payment_methods_on_kb_payment_method_id` (`kb_payment_method_id`)
) ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_bin;

CREATE TABLE `paypal_express_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paypal_express_response_id` int(11) NOT NULL,
  `api_call` varchar(255) NOT NULL,
  `kb_payment_id` varchar(255) NOT NULL,
  `kb_payment_transaction_id` varchar(255) NOT NULL,
  `transaction_type` varchar(255) NOT NULL,
  `payment_processor_account_id` varchar(255) DEFAULT NULL,
  `txn_id` varchar(255) DEFAULT NULL,
  `amount_in_cents` int(11) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `kb_account_id` varchar(255) NOT NULL,
  `kb_tenant_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_paypal_express_transactions_on_kb_payment_id` (`kb_payment_id`)
) ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_bin;

CREATE TABLE `paypal_express_responses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `api_call` varchar(255) NOT NULL,
  `kb_payment_id` varchar(255) DEFAULT NULL,
  `kb_payment_transaction_id` varchar(255) DEFAULT NULL,
  `transaction_type` varchar(255) DEFAULT NULL,
  `payment_processor_account_id` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `authorization` varchar(255) DEFAULT NULL,
  `fraud_review` tinyint(1) DEFAULT NULL,
  `test` tinyint(1) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `payer_id` varchar(255) DEFAULT NULL,
  `billing_agreement_id` varchar(255) DEFAULT NULL,
  `payer_name` varchar(255) DEFAULT NULL,
  `payer_email` varchar(255) DEFAULT NULL,
  `payer_country` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `ship_to_address_name` varchar(255) DEFAULT NULL,
  `ship_to_address_company` varchar(255) DEFAULT NULL,
  `ship_to_address_address1` varchar(255) DEFAULT NULL,
  `ship_to_address_address2` varchar(255) DEFAULT NULL,
  `ship_to_address_city` varchar(255) DEFAULT NULL,
  `ship_to_address_state` varchar(255) DEFAULT NULL,
  `ship_to_address_country` varchar(255) DEFAULT NULL,
  `ship_to_address_zip` varchar(255) DEFAULT NULL,
  `ship_to_address_phone` varchar(255) DEFAULT NULL,
  `receiver_info_business` varchar(255) DEFAULT NULL,
  `receiver_info_receiver` varchar(255) DEFAULT NULL,
  `receiver_info_receiverid` varchar(255) DEFAULT NULL,
  `payment_info_transactionid` varchar(255) DEFAULT NULL,
  `payment_info_parenttransactionid` varchar(255) DEFAULT NULL,
  `payment_info_receiptid` varchar(255) DEFAULT NULL,
  `payment_info_transactiontype` varchar(255) DEFAULT NULL,
  `payment_info_paymenttype` varchar(255) DEFAULT NULL,
  `payment_info_paymentdate` varchar(255) DEFAULT NULL,
  `payment_info_grossamount` varchar(255) DEFAULT NULL,
  `payment_info_feeamount` varchar(255) DEFAULT NULL,
  `payment_info_taxamount` varchar(255) DEFAULT NULL,
  `payment_info_exchangerate` varchar(255) DEFAULT NULL,
  `payment_info_paymentstatus` varchar(255) DEFAULT NULL,
  `payment_info_pendingreason` varchar(255) DEFAULT NULL,
  `payment_info_reasoncode` varchar(255) DEFAULT NULL,
  `payment_info_protectioneligibility` varchar(255) DEFAULT NULL,
  `payment_info_protectioneligibilitytype` varchar(255) DEFAULT NULL,
  `payment_info_shipamount` varchar(255) DEFAULT NULL,
  `payment_info_shiphandleamount` varchar(255) DEFAULT NULL,
  `payment_info_shipdiscount` varchar(255) DEFAULT NULL,
  `payment_info_insuranceamount` varchar(255) DEFAULT NULL,
  `payment_info_subject` varchar(255) DEFAULT NULL,
  `avs_result_code` varchar(255) DEFAULT NULL,
  `avs_result_message` varchar(255) DEFAULT NULL,
  `avs_result_street_match` varchar(255) DEFAULT NULL,
  `avs_result_postal_match` varchar(255) DEFAULT NULL,
  `cvv_result_code` varchar(255) DEFAULT NULL,
  `cvv_result_message` varchar(255) DEFAULT NULL,
  `success` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `kb_account_id` varchar(255) DEFAULT NULL,
  `kb_tenant_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_bin;
