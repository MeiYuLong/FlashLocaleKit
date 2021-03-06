//
//  FlashLocale.swift
//  LocaleManager
//
//  Created by 宋东昊 on 2021/4/6.
//

import Foundation

public class FlashLocale: Codable {
    /// 国家信息
    public var country_info: CountryInfo?
    /// 快递信息
    public var express_info: ExpressInfo?
}
/// 业务无关的本地化信息
public class CountryInfo: Codable {
    /// 国家 TH
    public var country_name: String?
    /// 国家名称(本国语言)
    public var native_country_name: String?
    /// 语言编码
    public var language_code: String?
    /// 语言（本国语言）
    public var native_language_code: String?
    /// 国家简称(2位)
    public var ISO_code: String?
    /// 国家简称(3位)
    public var ISO_code_three: String?
    /// 国际电话区号
    public var country_code: String?
    /// 时区
    public var time_zone: String?
    /// 货币
    public var currency: String?
    /// 货币符号
    public var currency_symbol: String?
    /// 货币统一展示
    public var currency_display: String?
    /// 长日期格式
    public var long_date_format: String?
    /// 普通日期格式
    public var date_format: String?
    /// 服务电话
    public var service_telphone: String?
    /// 税号
    public var tax_id: String?
    /// 座机正则表达式校验
    public var phone_number_regex: String?
    /// 手机号正则表达式校验
    public var mobile_phone_regex: String?
    /// 宽松的手机号校验   校验9或者10位数字
    public var mobile_phone_loosse_regex: String?
    /// 宽松的手机号校验   校验10位数字
    public var phone_number_loosse_regex: String?
    /// 手机号最大长度
    public var mobile_phone_maxlength: String?
    /// 手机号最大触发长度
    public var phone_number_tigger_length: String?
    /// 手机号最小触发长度
    public var min_phone_number_tigger_length: String?
    /// 手机号正则表达式校验（严格校验）
    public var mobile_phone_regex_strict: String?
    /// 身份证号
    public var identity_card_number_regex: String?
    /// 身份证号长度
    public var identity_card_number_maxlength: String?
    /// 护照号
    public var passport_regex: String?
    /// 护照号长度
    public var passport_maxlength: String?
    /// 驾照号长度
    public var driving_license_maxlength: String?
    /// 工作证号长度
    public var permit_number_maxlength: String?
    /// 车牌号长度
    public var car_number_maxlength: String?
    /// 汽车发动机编号长度
    public var car_Engine_number_maxlength: String?
    /// 官网短链接
    public var offical_short_website: String?
    /// 公司客服电话 带中横线拼接
    public var company_service_telphone: String?
    /// 版权声明文案
    public var copyright_text: String?
}

/// 快递业务相关的本地化信息
public class ExpressInfo: Codable {
    /// 运单号前缀
    public var package_no_prefix: String?
    /// 运单寄件人标记
    public var waybill_sender_tag: String?
    /// 运单收件人标记
    public var waybill_consignee_tag: String?
    /// 运单水果信息标记
    public var waybill_fruit_tag: String?
    /// 面单上收件人签字标识
    public var waybill_consignee_singer_tag: String?
    /// 回执单现结客户标记
    public var receipt_cash_tag: String?
    /// 回执单定结客户标记
    public var receipt_regular_tag: String?
    /// 回执单保险费用标记
    public var receipt_insurance_tag: String?
    /// 回执单增值服务标记
    public var receipt_value_added_tag: String?
    /// 回执单售卖包材标记
    public var receipt_sell_material_tag: String?
    /// 回执单打印日期
    public var receipt_print_date: String?
    /// 回执单揽收任务id
    public var receipt_pickup_task_id: String?
    /// Flash公司名称
    public var receipt_company_name: String?
    /// Flash公司-详细地址
    public var receipt_office_address: String?
    /// Flash公司-行政区域
    public var receipt_office_region: String?
    /// 回执单现结客户费用提示语
    public var receipt_cash_fee_tip: String?
    /// 回执单定结客户费用提示语
    public var receipt_regular_fee_tip: String?
    /// 回执单保价险
    public var receipt_insured_insurance_title: String?
    /// 回执单运费险
    public var receipt_freight_insurance_title: String?
    /// 回执单外包装破损险
    public var receipt_package_insurance_title: String?
    /// 回执单总费用
    public var receipt_total_fee: String?
    /// 回执单总税费用
    public var receipt_total_vat: String?
    /// 回执单包裹税费
    public var receipt_package_vat: String?
    /// 回执单税后总金额
    public var receipt_total_fee_after_tax: String?
    /// 回执单cod总金额
    public var receipt_total_cod_fee: String?
    /// 回执单包材费总费用
    public var receipt_total_material_fee: String?
    /// 回执单实收费用
    public var receipt_receivable_fee: String?
    /// 回执单报销提示语
    public var receipt_insurance_tip: String?
    /// 回执单客户标题
    public var receipt_customer_title: String?
    /// 回执单包裹总数量标题
    public var receipt_total_count_title: String?
    /// 回执单税号标题
    public var receipt_tax_id_title: String?
    /// 回执单结算方式
    public var receipt_tel_title: String?
    /// 回执单上二维码提示语
    public var receipt_scan_qrcode_tip: String?
    /// 回执单揽收提示语
    public var receipt_pickup_tip: String?
    /// 回执单包材标题
    public var receipt_material_title: String?
    /// 回执单寄件个数标题
    public var receipt_count_title: String?
    /// 回执单寄件总数量提标题
    public var receipt_amount_title: String?
    /// 运单号正则
    public var pno_number_regex: String?
    /// 外部订单号正则
    public var out_trade_number_regex: String?
}
