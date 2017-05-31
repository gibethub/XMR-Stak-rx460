#ifndef WOLF_AES_CL
#define WOLF_AES_CL

// AES table - the other three are generated on the fly

static const __constant uint AES0_C[256] =
{
	0xA56363C6U, 0x847C7CF8U, 0x997777EEU, 0x8D7B7BF6U,
	0x0DF2F2FFU, 0xBD6B6BD6U, 0xB16F6FDEU, 0x54C5C591U,
	0x50303060U, 0x03010102U, 0xA96767CEU, 0x7D2B2B56U,
	0x19FEFEE7U, 0x62D7D7B5U, 0xE6ABAB4DU, 0x9A7676ECU,
	0x45CACA8FU, 0x9D82821FU, 0x40C9C989U, 0x877D7DFAU,
	0x15FAFAEFU, 0xEB5959B2U, 0xC947478EU, 0x0BF0F0FBU,
	0xECADAD41U, 0x67D4D4B3U, 0xFDA2A25FU, 0xEAAFAF45U,
	0xBF9C9C23U, 0xF7A4A453U, 0x967272E4U, 0x5BC0C09BU,
	0xC2B7B775U, 0x1CFDFDE1U, 0xAE93933DU, 0x6A26264CU,
	0x5A36366CU, 0x413F3F7EU, 0x02F7F7F5U, 0x4FCCCC83U,
	0x5C343468U, 0xF4A5A551U, 0x34E5E5D1U, 0x08F1F1F9U,
	0x937171E2U, 0x73D8D8ABU, 0x53313162U, 0x3F15152AU,
	0x0C040408U, 0x52C7C795U, 0x65232346U, 0x5EC3C39DU,
	0x28181830U, 0xA1969637U, 0x0F05050AU, 0xB59A9A2FU,
	0x0907070EU, 0x36121224U, 0x9B80801BU, 0x3DE2E2DFU,
	0x26EBEBCDU, 0x6927274EU, 0xCDB2B27FU, 0x9F7575EAU,
	0x1B090912U, 0x9E83831DU, 0x742C2C58U, 0x2E1A1A34U,
	0x2D1B1B36U, 0xB26E6EDCU, 0xEE5A5AB4U, 0xFBA0A05BU,
	0xF65252A4U, 0x4D3B3B76U, 0x61D6D6B7U, 0xCEB3B37DU,
	0x7B292952U, 0x3EE3E3DDU, 0x712F2F5EU, 0x97848413U,
	0xF55353A6U, 0x68D1D1B9U, 0x00000000U, 0x2CEDEDC1U,
	0x60202040U, 0x1FFCFCE3U, 0xC8B1B179U, 0xED5B5BB6U,
	0xBE6A6AD4U, 0x46CBCB8DU, 0xD9BEBE67U, 0x4B393972U,
	0xDE4A4A94U, 0xD44C4C98U, 0xE85858B0U, 0x4ACFCF85U,
	0x6BD0D0BBU, 0x2AEFEFC5U, 0xE5AAAA4FU, 0x16FBFBEDU,
	0xC5434386U, 0xD74D4D9AU, 0x55333366U, 0x94858511U,
	0xCF45458AU, 0x10F9F9E9U, 0x06020204U, 0x817F7FFEU,
	0xF05050A0U, 0x443C3C78U, 0xBA9F9F25U, 0xE3A8A84BU,
	0xF35151A2U, 0xFEA3A35DU, 0xC0404080U, 0x8A8F8F05U,
	0xAD92923FU, 0xBC9D9D21U, 0x48383870U, 0x04F5F5F1U,
	0xDFBCBC63U, 0xC1B6B677U, 0x75DADAAFU, 0x63212142U,
	0x30101020U, 0x1AFFFFE5U, 0x0EF3F3FDU, 0x6DD2D2BFU,
	0x4CCDCD81U, 0x140C0C18U, 0x35131326U, 0x2FECECC3U,
	0xE15F5FBEU, 0xA2979735U, 0xCC444488U, 0x3917172EU,
	0x57C4C493U, 0xF2A7A755U, 0x827E7EFCU, 0x473D3D7AU,
	0xAC6464C8U, 0xE75D5DBAU, 0x2B191932U, 0x957373E6U,
	0xA06060C0U, 0x98818119U, 0xD14F4F9EU, 0x7FDCDCA3U,
	0x66222244U, 0x7E2A2A54U, 0xAB90903BU, 0x8388880BU,
	0xCA46468CU, 0x29EEEEC7U, 0xD3B8B86BU, 0x3C141428U,
	0x79DEDEA7U, 0xE25E5EBCU, 0x1D0B0B16U, 0x76DBDBADU,
	0x3BE0E0DBU, 0x56323264U, 0x4E3A3A74U, 0x1E0A0A14U,
	0xDB494992U, 0x0A06060CU, 0x6C242448U, 0xE45C5CB8U,
	0x5DC2C29FU, 0x6ED3D3BDU, 0xEFACAC43U, 0xA66262C4U,
	0xA8919139U, 0xA4959531U, 0x37E4E4D3U, 0x8B7979F2U,
	0x32E7E7D5U, 0x43C8C88BU, 0x5937376EU, 0xB76D6DDAU,
	0x8C8D8D01U, 0x64D5D5B1U, 0xD24E4E9CU, 0xE0A9A949U,
	0xB46C6CD8U, 0xFA5656ACU, 0x07F4F4F3U, 0x25EAEACFU,
	0xAF6565CAU, 0x8E7A7AF4U, 0xE9AEAE47U, 0x18080810U,
	0xD5BABA6FU, 0x887878F0U, 0x6F25254AU, 0x722E2E5CU,
	0x241C1C38U, 0xF1A6A657U, 0xC7B4B473U, 0x51C6C697U,
	0x23E8E8CBU, 0x7CDDDDA1U, 0x9C7474E8U, 0x211F1F3EU,
	0xDD4B4B96U, 0xDCBDBD61U, 0x868B8B0DU, 0x858A8A0FU,
	0x907070E0U, 0x423E3E7CU, 0xC4B5B571U, 0xAA6666CCU,
	0xD8484890U, 0x05030306U, 0x01F6F6F7U, 0x120E0E1CU,
	0xA36161C2U, 0x5F35356AU, 0xF95757AEU, 0xD0B9B969U,
	0x91868617U, 0x58C1C199U, 0x271D1D3AU, 0xB99E9E27U,
	0x38E1E1D9U, 0x13F8F8EBU, 0xB398982BU, 0x33111122U,
	0xBB6969D2U, 0x70D9D9A9U, 0x898E8E07U, 0xA7949433U,
	0xB69B9B2DU, 0x221E1E3CU, 0x92878715U, 0x20E9E9C9U,
	0x49CECE87U, 0xFF5555AAU, 0x78282850U, 0x7ADFDFA5U,
	0x8F8C8C03U, 0xF8A1A159U, 0x80898909U, 0x170D0D1AU,
	0xDABFBF65U, 0x31E6E6D7U, 0xC6424284U, 0xB86868D0U,
	0xC3414182U, 0xB0999929U, 0x772D2D5AU, 0x110F0F1EU,
	0xCBB0B07BU, 0xFC5454A8U, 0xD6BBBB6DU, 0x3A16162CU
};

#define ROTATE32(bits,n)  ((bits << n) | (bits >> (32 - n)))
static const __constant uint AES1_C[256] =
{
	ROTATE32(0xA56363C6U,8U), ROTATE32(0x847C7CF8U,8U), ROTATE32(0x997777EEU,8U), ROTATE32(0x8D7B7BF6U,8U),
	ROTATE32(0x0DF2F2FFU,8U), ROTATE32(0xBD6B6BD6U,8U), ROTATE32(0xB16F6FDEU,8U), ROTATE32(0x54C5C591U,8U),
	ROTATE32(0x50303060U,8U), ROTATE32(0x03010102U,8U), ROTATE32(0xA96767CEU,8U), ROTATE32(0x7D2B2B56U,8U),
	ROTATE32(0x19FEFEE7U,8U), ROTATE32(0x62D7D7B5U,8U), ROTATE32(0xE6ABAB4DU,8U), ROTATE32(0x9A7676ECU,8U),
	ROTATE32(0x45CACA8FU,8U), ROTATE32(0x9D82821FU,8U), ROTATE32(0x40C9C989U,8U), ROTATE32(0x877D7DFAU,8U),
	ROTATE32(0x15FAFAEFU,8U), ROTATE32(0xEB5959B2U,8U), ROTATE32(0xC947478EU,8U), ROTATE32(0x0BF0F0FBU,8U),
	ROTATE32(0xECADAD41U,8U), ROTATE32(0x67D4D4B3U,8U), ROTATE32(0xFDA2A25FU,8U), ROTATE32(0xEAAFAF45U,8U),
	ROTATE32(0xBF9C9C23U,8U), ROTATE32(0xF7A4A453U,8U), ROTATE32(0x967272E4U,8U), ROTATE32(0x5BC0C09BU,8U),
	ROTATE32(0xC2B7B775U,8U), ROTATE32(0x1CFDFDE1U,8U), ROTATE32(0xAE93933DU,8U), ROTATE32(0x6A26264CU,8U),
	ROTATE32(0x5A36366CU,8U), ROTATE32(0x413F3F7EU,8U), ROTATE32(0x02F7F7F5U,8U), ROTATE32(0x4FCCCC83U,8U),
	ROTATE32(0x5C343468U,8U), ROTATE32(0xF4A5A551U,8U), ROTATE32(0x34E5E5D1U,8U), ROTATE32(0x08F1F1F9U,8U),
	ROTATE32(0x937171E2U,8U), ROTATE32(0x73D8D8ABU,8U), ROTATE32(0x53313162U,8U), ROTATE32(0x3F15152AU,8U),
	ROTATE32(0x0C040408U,8U), ROTATE32(0x52C7C795U,8U), ROTATE32(0x65232346U,8U), ROTATE32(0x5EC3C39DU,8U),
	ROTATE32(0x28181830U,8U), ROTATE32(0xA1969637U,8U), ROTATE32(0x0F05050AU,8U), ROTATE32(0xB59A9A2FU,8U),
	ROTATE32(0x0907070EU,8U), ROTATE32(0x36121224U,8U), ROTATE32(0x9B80801BU,8U), ROTATE32(0x3DE2E2DFU,8U),
	ROTATE32(0x26EBEBCDU,8U), ROTATE32(0x6927274EU,8U), ROTATE32(0xCDB2B27FU,8U), ROTATE32(0x9F7575EAU,8U),
	ROTATE32(0x1B090912U,8U), ROTATE32(0x9E83831DU,8U), ROTATE32(0x742C2C58U,8U), ROTATE32(0x2E1A1A34U,8U),
	ROTATE32(0x2D1B1B36U,8U), ROTATE32(0xB26E6EDCU,8U), ROTATE32(0xEE5A5AB4U,8U), ROTATE32(0xFBA0A05BU,8U),
	ROTATE32(0xF65252A4U,8U), ROTATE32(0x4D3B3B76U,8U), ROTATE32(0x61D6D6B7U,8U), ROTATE32(0xCEB3B37DU,8U),
	ROTATE32(0x7B292952U,8U), ROTATE32(0x3EE3E3DDU,8U), ROTATE32(0x712F2F5EU,8U), ROTATE32(0x97848413U,8U),
	ROTATE32(0xF55353A6U,8U), ROTATE32(0x68D1D1B9U,8U), ROTATE32(0x00000000U,8U), ROTATE32(0x2CEDEDC1U,8U),
	ROTATE32(0x60202040U,8U), ROTATE32(0x1FFCFCE3U,8U), ROTATE32(0xC8B1B179U,8U), ROTATE32(0xED5B5BB6U,8U),
	ROTATE32(0xBE6A6AD4U,8U), ROTATE32(0x46CBCB8DU,8U), ROTATE32(0xD9BEBE67U,8U), ROTATE32(0x4B393972U,8U),
	ROTATE32(0xDE4A4A94U,8U), ROTATE32(0xD44C4C98U,8U), ROTATE32(0xE85858B0U,8U), ROTATE32(0x4ACFCF85U,8U),
	ROTATE32(0x6BD0D0BBU,8U), ROTATE32(0x2AEFEFC5U,8U), ROTATE32(0xE5AAAA4FU,8U), ROTATE32(0x16FBFBEDU,8U),
	ROTATE32(0xC5434386U,8U), ROTATE32(0xD74D4D9AU,8U), ROTATE32(0x55333366U,8U), ROTATE32(0x94858511U,8U),
	ROTATE32(0xCF45458AU,8U), ROTATE32(0x10F9F9E9U,8U), ROTATE32(0x06020204U,8U), ROTATE32(0x817F7FFEU,8U),
	ROTATE32(0xF05050A0U,8U), ROTATE32(0x443C3C78U,8U), ROTATE32(0xBA9F9F25U,8U), ROTATE32(0xE3A8A84BU,8U),
	ROTATE32(0xF35151A2U,8U), ROTATE32(0xFEA3A35DU,8U), ROTATE32(0xC0404080U,8U), ROTATE32(0x8A8F8F05U,8U),
	ROTATE32(0xAD92923FU,8U), ROTATE32(0xBC9D9D21U,8U), ROTATE32(0x48383870U,8U), ROTATE32(0x04F5F5F1U,8U),
	ROTATE32(0xDFBCBC63U,8U), ROTATE32(0xC1B6B677U,8U), ROTATE32(0x75DADAAFU,8U), ROTATE32(0x63212142U,8U),
	ROTATE32(0x30101020U,8U), ROTATE32(0x1AFFFFE5U,8U), ROTATE32(0x0EF3F3FDU,8U), ROTATE32(0x6DD2D2BFU,8U),
	ROTATE32(0x4CCDCD81U,8U), ROTATE32(0x140C0C18U,8U), ROTATE32(0x35131326U,8U), ROTATE32(0x2FECECC3U,8U),
	ROTATE32(0xE15F5FBEU,8U), ROTATE32(0xA2979735U,8U), ROTATE32(0xCC444488U,8U), ROTATE32(0x3917172EU,8U),
	ROTATE32(0x57C4C493U,8U), ROTATE32(0xF2A7A755U,8U), ROTATE32(0x827E7EFCU,8U), ROTATE32(0x473D3D7AU,8U),
	ROTATE32(0xAC6464C8U,8U), ROTATE32(0xE75D5DBAU,8U), ROTATE32(0x2B191932U,8U), ROTATE32(0x957373E6U,8U),
	ROTATE32(0xA06060C0U,8U), ROTATE32(0x98818119U,8U), ROTATE32(0xD14F4F9EU,8U), ROTATE32(0x7FDCDCA3U,8U),
	ROTATE32(0x66222244U,8U), ROTATE32(0x7E2A2A54U,8U), ROTATE32(0xAB90903BU,8U), ROTATE32(0x8388880BU,8U),
	ROTATE32(0xCA46468CU,8U), ROTATE32(0x29EEEEC7U,8U), ROTATE32(0xD3B8B86BU,8U), ROTATE32(0x3C141428U,8U),
	ROTATE32(0x79DEDEA7U,8U), ROTATE32(0xE25E5EBCU,8U), ROTATE32(0x1D0B0B16U,8U), ROTATE32(0x76DBDBADU,8U),
	ROTATE32(0x3BE0E0DBU,8U), ROTATE32(0x56323264U,8U), ROTATE32(0x4E3A3A74U,8U), ROTATE32(0x1E0A0A14U,8U),
	ROTATE32(0xDB494992U,8U), ROTATE32(0x0A06060CU,8U), ROTATE32(0x6C242448U,8U), ROTATE32(0xE45C5CB8U,8U),
	ROTATE32(0x5DC2C29FU,8U), ROTATE32(0x6ED3D3BDU,8U), ROTATE32(0xEFACAC43U,8U), ROTATE32(0xA66262C4U,8U),
	ROTATE32(0xA8919139U,8U), ROTATE32(0xA4959531U,8U), ROTATE32(0x37E4E4D3U,8U), ROTATE32(0x8B7979F2U,8U),
	ROTATE32(0x32E7E7D5U,8U), ROTATE32(0x43C8C88BU,8U), ROTATE32(0x5937376EU,8U), ROTATE32(0xB76D6DDAU,8U),
	ROTATE32(0x8C8D8D01U,8U), ROTATE32(0x64D5D5B1U,8U), ROTATE32(0xD24E4E9CU,8U), ROTATE32(0xE0A9A949U,8U),
	ROTATE32(0xB46C6CD8U,8U), ROTATE32(0xFA5656ACU,8U), ROTATE32(0x07F4F4F3U,8U), ROTATE32(0x25EAEACFU,8U),
	ROTATE32(0xAF6565CAU,8U), ROTATE32(0x8E7A7AF4U,8U), ROTATE32(0xE9AEAE47U,8U), ROTATE32(0x18080810U,8U),
	ROTATE32(0xD5BABA6FU,8U), ROTATE32(0x887878F0U,8U), ROTATE32(0x6F25254AU,8U), ROTATE32(0x722E2E5CU,8U),
	ROTATE32(0x241C1C38U,8U), ROTATE32(0xF1A6A657U,8U), ROTATE32(0xC7B4B473U,8U), ROTATE32(0x51C6C697U,8U),
	ROTATE32(0x23E8E8CBU,8U), ROTATE32(0x7CDDDDA1U,8U), ROTATE32(0x9C7474E8U,8U), ROTATE32(0x211F1F3EU,8U),
	ROTATE32(0xDD4B4B96U,8U), ROTATE32(0xDCBDBD61U,8U), ROTATE32(0x868B8B0DU,8U), ROTATE32(0x858A8A0FU,8U),
	ROTATE32(0x907070E0U,8U), ROTATE32(0x423E3E7CU,8U), ROTATE32(0xC4B5B571U,8U), ROTATE32(0xAA6666CCU,8U),
	ROTATE32(0xD8484890U,8U), ROTATE32(0x05030306U,8U), ROTATE32(0x01F6F6F7U,8U), ROTATE32(0x120E0E1CU,8U),
	ROTATE32(0xA36161C2U,8U), ROTATE32(0x5F35356AU,8U), ROTATE32(0xF95757AEU,8U), ROTATE32(0xD0B9B969U,8U),
	ROTATE32(0x91868617U,8U), ROTATE32(0x58C1C199U,8U), ROTATE32(0x271D1D3AU,8U), ROTATE32(0xB99E9E27U,8U),
	ROTATE32(0x38E1E1D9U,8U), ROTATE32(0x13F8F8EBU,8U), ROTATE32(0xB398982BU,8U), ROTATE32(0x33111122U,8U),
	ROTATE32(0xBB6969D2U,8U), ROTATE32(0x70D9D9A9U,8U), ROTATE32(0x898E8E07U,8U), ROTATE32(0xA7949433U,8U),
	ROTATE32(0xB69B9B2DU,8U), ROTATE32(0x221E1E3CU,8U), ROTATE32(0x92878715U,8U), ROTATE32(0x20E9E9C9U,8U),
	ROTATE32(0x49CECE87U,8U), ROTATE32(0xFF5555AAU,8U), ROTATE32(0x78282850U,8U), ROTATE32(0x7ADFDFA5U,8U),
	ROTATE32(0x8F8C8C03U,8U), ROTATE32(0xF8A1A159U,8U), ROTATE32(0x80898909U,8U), ROTATE32(0x170D0D1AU,8U),
	ROTATE32(0xDABFBF65U,8U), ROTATE32(0x31E6E6D7U,8U), ROTATE32(0xC6424284U,8U), ROTATE32(0xB86868D0U,8U),
	ROTATE32(0xC3414182U,8U), ROTATE32(0xB0999929U,8U), ROTATE32(0x772D2D5AU,8U), ROTATE32(0x110F0F1EU,8U),
	ROTATE32(0xCBB0B07BU,8U), ROTATE32(0xFC5454A8U,8U), ROTATE32(0xD6BBBB6DU,8U), ROTATE32(0x3A16162CU,8U)
};


static const __constant uint AES2_C[256] =
{
	ROTATE32(0xA56363C6U,16U), ROTATE32(0x847C7CF8U,16U), ROTATE32(0x997777EEU,16U), ROTATE32(0x8D7B7BF6U,16U),
	ROTATE32(0x0DF2F2FFU,16U), ROTATE32(0xBD6B6BD6U,16U), ROTATE32(0xB16F6FDEU,16U), ROTATE32(0x54C5C591U,16U),
	ROTATE32(0x50303060U,16U), ROTATE32(0x03010102U,16U), ROTATE32(0xA96767CEU,16U), ROTATE32(0x7D2B2B56U,16U),
	ROTATE32(0x19FEFEE7U,16U), ROTATE32(0x62D7D7B5U,16U), ROTATE32(0xE6ABAB4DU,16U), ROTATE32(0x9A7676ECU,16U),
	ROTATE32(0x45CACA8FU,16U), ROTATE32(0x9D82821FU,16U), ROTATE32(0x40C9C989U,16U), ROTATE32(0x877D7DFAU,16U),
	ROTATE32(0x15FAFAEFU,16U), ROTATE32(0xEB5959B2U,16U), ROTATE32(0xC947478EU,16U), ROTATE32(0x0BF0F0FBU,16U),
	ROTATE32(0xECADAD41U,16U), ROTATE32(0x67D4D4B3U,16U), ROTATE32(0xFDA2A25FU,16U), ROTATE32(0xEAAFAF45U,16U),
	ROTATE32(0xBF9C9C23U,16U), ROTATE32(0xF7A4A453U,16U), ROTATE32(0x967272E4U,16U), ROTATE32(0x5BC0C09BU,16U),
	ROTATE32(0xC2B7B775U,16U), ROTATE32(0x1CFDFDE1U,16U), ROTATE32(0xAE93933DU,16U), ROTATE32(0x6A26264CU,16U),
	ROTATE32(0x5A36366CU,16U), ROTATE32(0x413F3F7EU,16U), ROTATE32(0x02F7F7F5U,16U), ROTATE32(0x4FCCCC83U,16U),
	ROTATE32(0x5C343468U,16U), ROTATE32(0xF4A5A551U,16U), ROTATE32(0x34E5E5D1U,16U), ROTATE32(0x08F1F1F9U,16U),
	ROTATE32(0x937171E2U,16U), ROTATE32(0x73D8D8ABU,16U), ROTATE32(0x53313162U,16U), ROTATE32(0x3F15152AU,16U),
	ROTATE32(0x0C040408U,16U), ROTATE32(0x52C7C795U,16U), ROTATE32(0x65232346U,16U), ROTATE32(0x5EC3C39DU,16U),
	ROTATE32(0x28181830U,16U), ROTATE32(0xA1969637U,16U), ROTATE32(0x0F05050AU,16U), ROTATE32(0xB59A9A2FU,16U),
	ROTATE32(0x0907070EU,16U), ROTATE32(0x36121224U,16U), ROTATE32(0x9B80801BU,16U), ROTATE32(0x3DE2E2DFU,16U),
	ROTATE32(0x26EBEBCDU,16U), ROTATE32(0x6927274EU,16U), ROTATE32(0xCDB2B27FU,16U), ROTATE32(0x9F7575EAU,16U),
	ROTATE32(0x1B090912U,16U), ROTATE32(0x9E83831DU,16U), ROTATE32(0x742C2C58U,16U), ROTATE32(0x2E1A1A34U,16U),
	ROTATE32(0x2D1B1B36U,16U), ROTATE32(0xB26E6EDCU,16U), ROTATE32(0xEE5A5AB4U,16U), ROTATE32(0xFBA0A05BU,16U),
	ROTATE32(0xF65252A4U,16U), ROTATE32(0x4D3B3B76U,16U), ROTATE32(0x61D6D6B7U,16U), ROTATE32(0xCEB3B37DU,16U),
	ROTATE32(0x7B292952U,16U), ROTATE32(0x3EE3E3DDU,16U), ROTATE32(0x712F2F5EU,16U), ROTATE32(0x97848413U,16U),
	ROTATE32(0xF55353A6U,16U), ROTATE32(0x68D1D1B9U,16U), ROTATE32(0x00000000U,16U), ROTATE32(0x2CEDEDC1U,16U),
	ROTATE32(0x60202040U,16U), ROTATE32(0x1FFCFCE3U,16U), ROTATE32(0xC8B1B179U,16U), ROTATE32(0xED5B5BB6U,16U),
	ROTATE32(0xBE6A6AD4U,16U), ROTATE32(0x46CBCB8DU,16U), ROTATE32(0xD9BEBE67U,16U), ROTATE32(0x4B393972U,16U),
	ROTATE32(0xDE4A4A94U,16U), ROTATE32(0xD44C4C98U,16U), ROTATE32(0xE85858B0U,16U), ROTATE32(0x4ACFCF85U,16U),
	ROTATE32(0x6BD0D0BBU,16U), ROTATE32(0x2AEFEFC5U,16U), ROTATE32(0xE5AAAA4FU,16U), ROTATE32(0x16FBFBEDU,16U),
	ROTATE32(0xC5434386U,16U), ROTATE32(0xD74D4D9AU,16U), ROTATE32(0x55333366U,16U), ROTATE32(0x94858511U,16U),
	ROTATE32(0xCF45458AU,16U), ROTATE32(0x10F9F9E9U,16U), ROTATE32(0x06020204U,16U), ROTATE32(0x817F7FFEU,16U),
	ROTATE32(0xF05050A0U,16U), ROTATE32(0x443C3C78U,16U), ROTATE32(0xBA9F9F25U,16U), ROTATE32(0xE3A8A84BU,16U),
	ROTATE32(0xF35151A2U,16U), ROTATE32(0xFEA3A35DU,16U), ROTATE32(0xC0404080U,16U), ROTATE32(0x8A8F8F05U,16U),
	ROTATE32(0xAD92923FU,16U), ROTATE32(0xBC9D9D21U,16U), ROTATE32(0x48383870U,16U), ROTATE32(0x04F5F5F1U,16U),
	ROTATE32(0xDFBCBC63U,16U), ROTATE32(0xC1B6B677U,16U), ROTATE32(0x75DADAAFU,16U), ROTATE32(0x63212142U,16U),
	ROTATE32(0x30101020U,16U), ROTATE32(0x1AFFFFE5U,16U), ROTATE32(0x0EF3F3FDU,16U), ROTATE32(0x6DD2D2BFU,16U),
	ROTATE32(0x4CCDCD81U,16U), ROTATE32(0x140C0C18U,16U), ROTATE32(0x35131326U,16U), ROTATE32(0x2FECECC3U,16U),
	ROTATE32(0xE15F5FBEU,16U), ROTATE32(0xA2979735U,16U), ROTATE32(0xCC444488U,16U), ROTATE32(0x3917172EU,16U),
	ROTATE32(0x57C4C493U,16U), ROTATE32(0xF2A7A755U,16U), ROTATE32(0x827E7EFCU,16U), ROTATE32(0x473D3D7AU,16U),
	ROTATE32(0xAC6464C8U,16U), ROTATE32(0xE75D5DBAU,16U), ROTATE32(0x2B191932U,16U), ROTATE32(0x957373E6U,16U),
	ROTATE32(0xA06060C0U,16U), ROTATE32(0x98818119U,16U), ROTATE32(0xD14F4F9EU,16U), ROTATE32(0x7FDCDCA3U,16U),
	ROTATE32(0x66222244U,16U), ROTATE32(0x7E2A2A54U,16U), ROTATE32(0xAB90903BU,16U), ROTATE32(0x8388880BU,16U),
	ROTATE32(0xCA46468CU,16U), ROTATE32(0x29EEEEC7U,16U), ROTATE32(0xD3B8B86BU,16U), ROTATE32(0x3C141428U,16U),
	ROTATE32(0x79DEDEA7U,16U), ROTATE32(0xE25E5EBCU,16U), ROTATE32(0x1D0B0B16U,16U), ROTATE32(0x76DBDBADU,16U),
	ROTATE32(0x3BE0E0DBU,16U), ROTATE32(0x56323264U,16U), ROTATE32(0x4E3A3A74U,16U), ROTATE32(0x1E0A0A14U,16U),
	ROTATE32(0xDB494992U,16U), ROTATE32(0x0A06060CU,16U), ROTATE32(0x6C242448U,16U), ROTATE32(0xE45C5CB8U,16U),
	ROTATE32(0x5DC2C29FU,16U), ROTATE32(0x6ED3D3BDU,16U), ROTATE32(0xEFACAC43U,16U), ROTATE32(0xA66262C4U,16U),
	ROTATE32(0xA8919139U,16U), ROTATE32(0xA4959531U,16U), ROTATE32(0x37E4E4D3U,16U), ROTATE32(0x8B7979F2U,16U),
	ROTATE32(0x32E7E7D5U,16U), ROTATE32(0x43C8C88BU,16U), ROTATE32(0x5937376EU,16U), ROTATE32(0xB76D6DDAU,16U),
	ROTATE32(0x8C8D8D01U,16U), ROTATE32(0x64D5D5B1U,16U), ROTATE32(0xD24E4E9CU,16U), ROTATE32(0xE0A9A949U,16U),
	ROTATE32(0xB46C6CD8U,16U), ROTATE32(0xFA5656ACU,16U), ROTATE32(0x07F4F4F3U,16U), ROTATE32(0x25EAEACFU,16U),
	ROTATE32(0xAF6565CAU,16U), ROTATE32(0x8E7A7AF4U,16U), ROTATE32(0xE9AEAE47U,16U), ROTATE32(0x18080810U,16U),
	ROTATE32(0xD5BABA6FU,16U), ROTATE32(0x887878F0U,16U), ROTATE32(0x6F25254AU,16U), ROTATE32(0x722E2E5CU,16U),
	ROTATE32(0x241C1C38U,16U), ROTATE32(0xF1A6A657U,16U), ROTATE32(0xC7B4B473U,16U), ROTATE32(0x51C6C697U,16U),
	ROTATE32(0x23E8E8CBU,16U), ROTATE32(0x7CDDDDA1U,16U), ROTATE32(0x9C7474E8U,16U), ROTATE32(0x211F1F3EU,16U),
	ROTATE32(0xDD4B4B96U,16U), ROTATE32(0xDCBDBD61U,16U), ROTATE32(0x868B8B0DU,16U), ROTATE32(0x858A8A0FU,16U),
	ROTATE32(0x907070E0U,16U), ROTATE32(0x423E3E7CU,16U), ROTATE32(0xC4B5B571U,16U), ROTATE32(0xAA6666CCU,16U),
	ROTATE32(0xD8484890U,16U), ROTATE32(0x05030306U,16U), ROTATE32(0x01F6F6F7U,16U), ROTATE32(0x120E0E1CU,16U),
	ROTATE32(0xA36161C2U,16U), ROTATE32(0x5F35356AU,16U), ROTATE32(0xF95757AEU,16U), ROTATE32(0xD0B9B969U,16U),
	ROTATE32(0x91868617U,16U), ROTATE32(0x58C1C199U,16U), ROTATE32(0x271D1D3AU,16U), ROTATE32(0xB99E9E27U,16U),
	ROTATE32(0x38E1E1D9U,16U), ROTATE32(0x13F8F8EBU,16U), ROTATE32(0xB398982BU,16U), ROTATE32(0x33111122U,16U),
	ROTATE32(0xBB6969D2U,16U), ROTATE32(0x70D9D9A9U,16U), ROTATE32(0x898E8E07U,16U), ROTATE32(0xA7949433U,16U),
	ROTATE32(0xB69B9B2DU,16U), ROTATE32(0x221E1E3CU,16U), ROTATE32(0x92878715U,16U), ROTATE32(0x20E9E9C9U,16U),
	ROTATE32(0x49CECE87U,16U), ROTATE32(0xFF5555AAU,16U), ROTATE32(0x78282850U,16U), ROTATE32(0x7ADFDFA5U,16U),
	ROTATE32(0x8F8C8C03U,16U), ROTATE32(0xF8A1A159U,16U), ROTATE32(0x80898909U,16U), ROTATE32(0x170D0D1AU,16U),
	ROTATE32(0xDABFBF65U,16U), ROTATE32(0x31E6E6D7U,16U), ROTATE32(0xC6424284U,16U), ROTATE32(0xB86868D0U,16U),
	ROTATE32(0xC3414182U,16U), ROTATE32(0xB0999929U,16U), ROTATE32(0x772D2D5AU,16U), ROTATE32(0x110F0F1EU,16U),
	ROTATE32(0xCBB0B07BU,16U), ROTATE32(0xFC5454A8U,16U), ROTATE32(0xD6BBBB6DU,16U), ROTATE32(0x3A16162CU,16U)
};

static const __constant uint AES3_C[256] =
{
	ROTATE32(0xA56363C6U,24U), ROTATE32(0x847C7CF8U,24U), ROTATE32(0x997777EEU,24U), ROTATE32(0x8D7B7BF6U,24U),
	ROTATE32(0x0DF2F2FFU,24U), ROTATE32(0xBD6B6BD6U,24U), ROTATE32(0xB16F6FDEU,24U), ROTATE32(0x54C5C591U,24U),
	ROTATE32(0x50303060U,24U), ROTATE32(0x03010102U,24U), ROTATE32(0xA96767CEU,24U), ROTATE32(0x7D2B2B56U,24U),
	ROTATE32(0x19FEFEE7U,24U), ROTATE32(0x62D7D7B5U,24U), ROTATE32(0xE6ABAB4DU,24U), ROTATE32(0x9A7676ECU,24U),
	ROTATE32(0x45CACA8FU,24U), ROTATE32(0x9D82821FU,24U), ROTATE32(0x40C9C989U,24U), ROTATE32(0x877D7DFAU,24U),
	ROTATE32(0x15FAFAEFU,24U), ROTATE32(0xEB5959B2U,24U), ROTATE32(0xC947478EU,24U), ROTATE32(0x0BF0F0FBU,24U),
	ROTATE32(0xECADAD41U,24U), ROTATE32(0x67D4D4B3U,24U), ROTATE32(0xFDA2A25FU,24U), ROTATE32(0xEAAFAF45U,24U),
	ROTATE32(0xBF9C9C23U,24U), ROTATE32(0xF7A4A453U,24U), ROTATE32(0x967272E4U,24U), ROTATE32(0x5BC0C09BU,24U),
	ROTATE32(0xC2B7B775U,24U), ROTATE32(0x1CFDFDE1U,24U), ROTATE32(0xAE93933DU,24U), ROTATE32(0x6A26264CU,24U),
	ROTATE32(0x5A36366CU,24U), ROTATE32(0x413F3F7EU,24U), ROTATE32(0x02F7F7F5U,24U), ROTATE32(0x4FCCCC83U,24U),
	ROTATE32(0x5C343468U,24U), ROTATE32(0xF4A5A551U,24U), ROTATE32(0x34E5E5D1U,24U), ROTATE32(0x08F1F1F9U,24U),
	ROTATE32(0x937171E2U,24U), ROTATE32(0x73D8D8ABU,24U), ROTATE32(0x53313162U,24U), ROTATE32(0x3F15152AU,24U),
	ROTATE32(0x0C040408U,24U), ROTATE32(0x52C7C795U,24U), ROTATE32(0x65232346U,24U), ROTATE32(0x5EC3C39DU,24U),
	ROTATE32(0x28181830U,24U), ROTATE32(0xA1969637U,24U), ROTATE32(0x0F05050AU,24U), ROTATE32(0xB59A9A2FU,24U),
	ROTATE32(0x0907070EU,24U), ROTATE32(0x36121224U,24U), ROTATE32(0x9B80801BU,24U), ROTATE32(0x3DE2E2DFU,24U),
	ROTATE32(0x26EBEBCDU,24U), ROTATE32(0x6927274EU,24U), ROTATE32(0xCDB2B27FU,24U), ROTATE32(0x9F7575EAU,24U),
	ROTATE32(0x1B090912U,24U), ROTATE32(0x9E83831DU,24U), ROTATE32(0x742C2C58U,24U), ROTATE32(0x2E1A1A34U,24U),
	ROTATE32(0x2D1B1B36U,24U), ROTATE32(0xB26E6EDCU,24U), ROTATE32(0xEE5A5AB4U,24U), ROTATE32(0xFBA0A05BU,24U),
	ROTATE32(0xF65252A4U,24U), ROTATE32(0x4D3B3B76U,24U), ROTATE32(0x61D6D6B7U,24U), ROTATE32(0xCEB3B37DU,24U),
	ROTATE32(0x7B292952U,24U), ROTATE32(0x3EE3E3DDU,24U), ROTATE32(0x712F2F5EU,24U), ROTATE32(0x97848413U,24U),
	ROTATE32(0xF55353A6U,24U), ROTATE32(0x68D1D1B9U,24U), ROTATE32(0x00000000U,24U), ROTATE32(0x2CEDEDC1U,24U),
	ROTATE32(0x60202040U,24U), ROTATE32(0x1FFCFCE3U,24U), ROTATE32(0xC8B1B179U,24U), ROTATE32(0xED5B5BB6U,24U),
	ROTATE32(0xBE6A6AD4U,24U), ROTATE32(0x46CBCB8DU,24U), ROTATE32(0xD9BEBE67U,24U), ROTATE32(0x4B393972U,24U),
	ROTATE32(0xDE4A4A94U,24U), ROTATE32(0xD44C4C98U,24U), ROTATE32(0xE85858B0U,24U), ROTATE32(0x4ACFCF85U,24U),
	ROTATE32(0x6BD0D0BBU,24U), ROTATE32(0x2AEFEFC5U,24U), ROTATE32(0xE5AAAA4FU,24U), ROTATE32(0x16FBFBEDU,24U),
	ROTATE32(0xC5434386U,24U), ROTATE32(0xD74D4D9AU,24U), ROTATE32(0x55333366U,24U), ROTATE32(0x94858511U,24U),
	ROTATE32(0xCF45458AU,24U), ROTATE32(0x10F9F9E9U,24U), ROTATE32(0x06020204U,24U), ROTATE32(0x817F7FFEU,24U),
	ROTATE32(0xF05050A0U,24U), ROTATE32(0x443C3C78U,24U), ROTATE32(0xBA9F9F25U,24U), ROTATE32(0xE3A8A84BU,24U),
	ROTATE32(0xF35151A2U,24U), ROTATE32(0xFEA3A35DU,24U), ROTATE32(0xC0404080U,24U), ROTATE32(0x8A8F8F05U,24U),
	ROTATE32(0xAD92923FU,24U), ROTATE32(0xBC9D9D21U,24U), ROTATE32(0x48383870U,24U), ROTATE32(0x04F5F5F1U,24U),
	ROTATE32(0xDFBCBC63U,24U), ROTATE32(0xC1B6B677U,24U), ROTATE32(0x75DADAAFU,24U), ROTATE32(0x63212142U,24U),
	ROTATE32(0x30101020U,24U), ROTATE32(0x1AFFFFE5U,24U), ROTATE32(0x0EF3F3FDU,24U), ROTATE32(0x6DD2D2BFU,24U),
	ROTATE32(0x4CCDCD81U,24U), ROTATE32(0x140C0C18U,24U), ROTATE32(0x35131326U,24U), ROTATE32(0x2FECECC3U,24U),
	ROTATE32(0xE15F5FBEU,24U), ROTATE32(0xA2979735U,24U), ROTATE32(0xCC444488U,24U), ROTATE32(0x3917172EU,24U),
	ROTATE32(0x57C4C493U,24U), ROTATE32(0xF2A7A755U,24U), ROTATE32(0x827E7EFCU,24U), ROTATE32(0x473D3D7AU,24U),
	ROTATE32(0xAC6464C8U,24U), ROTATE32(0xE75D5DBAU,24U), ROTATE32(0x2B191932U,24U), ROTATE32(0x957373E6U,24U),
	ROTATE32(0xA06060C0U,24U), ROTATE32(0x98818119U,24U), ROTATE32(0xD14F4F9EU,24U), ROTATE32(0x7FDCDCA3U,24U),
	ROTATE32(0x66222244U,24U), ROTATE32(0x7E2A2A54U,24U), ROTATE32(0xAB90903BU,24U), ROTATE32(0x8388880BU,24U),
	ROTATE32(0xCA46468CU,24U), ROTATE32(0x29EEEEC7U,24U), ROTATE32(0xD3B8B86BU,24U), ROTATE32(0x3C141428U,24U),
	ROTATE32(0x79DEDEA7U,24U), ROTATE32(0xE25E5EBCU,24U), ROTATE32(0x1D0B0B16U,24U), ROTATE32(0x76DBDBADU,24U),
	ROTATE32(0x3BE0E0DBU,24U), ROTATE32(0x56323264U,24U), ROTATE32(0x4E3A3A74U,24U), ROTATE32(0x1E0A0A14U,24U),
	ROTATE32(0xDB494992U,24U), ROTATE32(0x0A06060CU,24U), ROTATE32(0x6C242448U,24U), ROTATE32(0xE45C5CB8U,24U),
	ROTATE32(0x5DC2C29FU,24U), ROTATE32(0x6ED3D3BDU,24U), ROTATE32(0xEFACAC43U,24U), ROTATE32(0xA66262C4U,24U),
	ROTATE32(0xA8919139U,24U), ROTATE32(0xA4959531U,24U), ROTATE32(0x37E4E4D3U,24U), ROTATE32(0x8B7979F2U,24U),
	ROTATE32(0x32E7E7D5U,24U), ROTATE32(0x43C8C88BU,24U), ROTATE32(0x5937376EU,24U), ROTATE32(0xB76D6DDAU,24U),
	ROTATE32(0x8C8D8D01U,24U), ROTATE32(0x64D5D5B1U,24U), ROTATE32(0xD24E4E9CU,24U), ROTATE32(0xE0A9A949U,24U),
	ROTATE32(0xB46C6CD8U,24U), ROTATE32(0xFA5656ACU,24U), ROTATE32(0x07F4F4F3U,24U), ROTATE32(0x25EAEACFU,24U),
	ROTATE32(0xAF6565CAU,24U), ROTATE32(0x8E7A7AF4U,24U), ROTATE32(0xE9AEAE47U,24U), ROTATE32(0x18080810U,24U),
	ROTATE32(0xD5BABA6FU,24U), ROTATE32(0x887878F0U,24U), ROTATE32(0x6F25254AU,24U), ROTATE32(0x722E2E5CU,24U),
	ROTATE32(0x241C1C38U,24U), ROTATE32(0xF1A6A657U,24U), ROTATE32(0xC7B4B473U,24U), ROTATE32(0x51C6C697U,24U),
	ROTATE32(0x23E8E8CBU,24U), ROTATE32(0x7CDDDDA1U,24U), ROTATE32(0x9C7474E8U,24U), ROTATE32(0x211F1F3EU,24U),
	ROTATE32(0xDD4B4B96U,24U), ROTATE32(0xDCBDBD61U,24U), ROTATE32(0x868B8B0DU,24U), ROTATE32(0x858A8A0FU,24U),
	ROTATE32(0x907070E0U,24U), ROTATE32(0x423E3E7CU,24U), ROTATE32(0xC4B5B571U,24U), ROTATE32(0xAA6666CCU,24U),
	ROTATE32(0xD8484890U,24U), ROTATE32(0x05030306U,24U), ROTATE32(0x01F6F6F7U,24U), ROTATE32(0x120E0E1CU,24U),
	ROTATE32(0xA36161C2U,24U), ROTATE32(0x5F35356AU,24U), ROTATE32(0xF95757AEU,24U), ROTATE32(0xD0B9B969U,24U),
	ROTATE32(0x91868617U,24U), ROTATE32(0x58C1C199U,24U), ROTATE32(0x271D1D3AU,24U), ROTATE32(0xB99E9E27U,24U),
	ROTATE32(0x38E1E1D9U,24U), ROTATE32(0x13F8F8EBU,24U), ROTATE32(0xB398982BU,24U), ROTATE32(0x33111122U,24U),
	ROTATE32(0xBB6969D2U,24U), ROTATE32(0x70D9D9A9U,24U), ROTATE32(0x898E8E07U,24U), ROTATE32(0xA7949433U,24U),
	ROTATE32(0xB69B9B2DU,24U), ROTATE32(0x221E1E3CU,24U), ROTATE32(0x92878715U,24U), ROTATE32(0x20E9E9C9U,24U),
	ROTATE32(0x49CECE87U,24U), ROTATE32(0xFF5555AAU,24U), ROTATE32(0x78282850U,24U), ROTATE32(0x7ADFDFA5U,24U),
	ROTATE32(0x8F8C8C03U,24U), ROTATE32(0xF8A1A159U,24U), ROTATE32(0x80898909U,24U), ROTATE32(0x170D0D1AU,24U),
	ROTATE32(0xDABFBF65U,24U), ROTATE32(0x31E6E6D7U,24U), ROTATE32(0xC6424284U,24U), ROTATE32(0xB86868D0U,24U),
	ROTATE32(0xC3414182U,24U), ROTATE32(0xB0999929U,24U), ROTATE32(0x772D2D5AU,24U), ROTATE32(0x110F0F1EU,24U),
	ROTATE32(0xCBB0B07BU,24U), ROTATE32(0xFC5454A8U,24U), ROTATE32(0xD6BBBB6DU,24U), ROTATE32(0x3A16162CU,24U)
};






#define BYTE(x, y)	(amd_bfe((x), (y) << 3U, 8U))

uint4 AES_Round(const __local uint *AES0, const __local uint *AES1, const __local uint *AES2, const __local uint *AES3, const uint4 X, const uint4 key)
{
	uint4 Y;
	Y.s0 = AES0[BYTE(X.s0, 0)] ^ AES1[BYTE(X.s1, 1)] ^ AES2[BYTE(X.s2, 2)] ^ AES3[BYTE(X.s3, 3)];
    Y.s1 = AES0[BYTE(X.s1, 0)] ^ AES1[BYTE(X.s2, 1)] ^ AES2[BYTE(X.s3, 2)] ^ AES3[BYTE(X.s0, 3)];
    Y.s2 = AES0[BYTE(X.s2, 0)] ^ AES1[BYTE(X.s3, 1)] ^ AES2[BYTE(X.s0, 2)] ^ AES3[BYTE(X.s1, 3)];
    Y.s3 = AES0[BYTE(X.s3, 0)] ^ AES1[BYTE(X.s0, 1)] ^ AES2[BYTE(X.s1, 2)] ^ AES3[BYTE(X.s2, 3)];
    Y ^= key;
    return(Y);
}


#endif
