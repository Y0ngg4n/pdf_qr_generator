from crc import Calculator, Crc8


def calc_crc(code):
    crc_calculator = Calculator(Crc8.CCITT)

    crc = crc_calculator.checksum(code)

    return f"{crc:02X}"


__all__ = [
    "calc_crc",
]
