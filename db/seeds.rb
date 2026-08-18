Apartment::Tenant.switch('app') do
    Firm.find_or_create_by!(
        company_name: 'CaspiaContabilidade',
        cnpj: '12345678901234',
        crc_number: '123456'
    )
end
