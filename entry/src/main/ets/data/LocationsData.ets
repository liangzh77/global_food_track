import { Location } from '../models/DataModels';

export const LOCATIONS_DATA: Location[] = [
  // 大洲
  { id: 'asia', name: '亚洲', nameEn: 'Asia', type: 'continent' },
  { id: 'europe', name: '欧洲', nameEn: 'Europe', type: 'continent' },
  { id: 'africa', name: '非洲', nameEn: 'Africa', type: 'continent' },
  { id: 'north-america', name: '北美洲', nameEn: 'North America', type: 'continent' },
  { id: 'south-america', name: '南美洲', nameEn: 'South America', type: 'continent' },
  { id: 'oceania', name: '大洋洲', nameEn: 'Oceania', type: 'continent' },
  { id: 'middle-east', name: '中东', nameEn: 'Middle East', type: 'continent' },

  // 亚洲国家
  { id: 'china', name: '中国', nameEn: 'China', type: 'country', parent: 'asia' },
  { id: 'india', name: '印度', nameEn: 'India', type: 'country', parent: 'asia' },
  { id: 'japan', name: '日本', nameEn: 'Japan', type: 'country', parent: 'asia' },
  { id: 'korea', name: '韩国', nameEn: 'South Korea', type: 'country', parent: 'asia' },
  { id: 'vietnam', name: '越南', nameEn: 'Vietnam', type: 'country', parent: 'asia' },
  { id: 'thailand', name: '泰国', nameEn: 'Thailand', type: 'country', parent: 'asia' },
  { id: 'indonesia', name: '印度尼西亚', nameEn: 'Indonesia', type: 'country', parent: 'asia' },
  { id: 'malaysia', name: '马来西亚', nameEn: 'Malaysia', type: 'country', parent: 'asia' },
  { id: 'myanmar', name: '缅甸', nameEn: 'Myanmar', type: 'country', parent: 'asia' },
  { id: 'nepal', name: '尼泊尔', nameEn: 'Nepal', type: 'country', parent: 'asia' },
  { id: 'pakistan', name: '巴基斯坦', nameEn: 'Pakistan', type: 'country', parent: 'asia' },
  { id: 'philippines', name: '菲律宾', nameEn: 'Philippines', type: 'country', parent: 'asia' },
  { id: 'sri-lanka', name: '斯里兰卡', nameEn: 'Sri Lanka', type: 'country', parent: 'asia' },

  // 欧洲国家
  { id: 'italy', name: '意大利', nameEn: 'Italy', type: 'country', parent: 'europe' },
  { id: 'france', name: '法国', nameEn: 'France', type: 'country', parent: 'europe' },
  { id: 'spain', name: '西班牙', nameEn: 'Spain', type: 'country', parent: 'europe' },
  { id: 'germany', name: '德国', nameEn: 'Germany', type: 'country', parent: 'europe' },
  { id: 'uk', name: '英国', nameEn: 'United Kingdom', type: 'country', parent: 'europe' },
  { id: 'russia', name: '俄罗斯', nameEn: 'Russia', type: 'country', parent: 'europe' },
  { id: 'netherlands', name: '荷兰', nameEn: 'Netherlands', type: 'country', parent: 'europe' },
  { id: 'belgium', name: '比利时', nameEn: 'Belgium', type: 'country', parent: 'europe' },
  { id: 'austria', name: '奥地利', nameEn: 'Austria', type: 'country', parent: 'europe' },
  { id: 'switzerland', name: '瑞士', nameEn: 'Switzerland', type: 'country', parent: 'europe' },
  { id: 'ireland', name: '爱尔兰', nameEn: 'Ireland', type: 'country', parent: 'europe' },
  { id: 'poland', name: '波兰', nameEn: 'Poland', type: 'country', parent: 'europe' },
  { id: 'greece', name: '希腊', nameEn: 'Greece', type: 'country', parent: 'europe' },
  { id: 'portugal', name: '葡萄牙', nameEn: 'Portugal', type: 'country', parent: 'europe' },

  // 北美洲国家
  { id: 'usa', name: '美国', nameEn: 'United States', type: 'country', parent: 'north-america' },
  { id: 'mexico', name: '墨西哥', nameEn: 'Mexico', type: 'country', parent: 'north-america' },
  { id: 'canada', name: '加拿大', nameEn: 'Canada', type: 'country', parent: 'north-america' },

  // 南美洲国家
  { id: 'brazil', name: '巴西', nameEn: 'Brazil', type: 'country', parent: 'south-america' },
  { id: 'peru', name: '秘鲁', nameEn: 'Peru', type: 'country', parent: 'south-america' },
  { id: 'argentina', name: '阿根廷', nameEn: 'Argentina', type: 'country', parent: 'south-america' },
  { id: 'colombia', name: '哥伦比亚', nameEn: 'Colombia', type: 'country', parent: 'south-america' },
  { id: 'ecuador', name: '厄瓜多尔', nameEn: 'Ecuador', type: 'country', parent: 'south-america' },

  // 非洲国家
  { id: 'egypt', name: '埃及', nameEn: 'Egypt', type: 'country', parent: 'africa' },
  { id: 'ethiopia', name: '埃塞俄比亚', nameEn: 'Ethiopia', type: 'country', parent: 'africa' },
  { id: 'kenya', name: '肯尼亚', nameEn: 'Kenya', type: 'country', parent: 'africa' },
  { id: 'sudan', name: '苏丹', nameEn: 'Sudan', type: 'country', parent: 'africa' },
  { id: 'tanzania', name: '坦桑尼亚', nameEn: 'Tanzania', type: 'country', parent: 'africa' },
  { id: 'ghana', name: '加纳', nameEn: 'Ghana', type: 'country', parent: 'africa' },
  { id: 'morocco', name: '摩洛哥', nameEn: 'Morocco', type: 'country', parent: 'africa' },
  { id: 'nigeria', name: '尼日利亚', nameEn: 'Nigeria', type: 'country', parent: 'africa' },

  // 中东国家
  { id: 'turkey', name: '土耳其', nameEn: 'Turkey', type: 'country', parent: 'middle-east' },
  { id: 'iran', name: '伊朗', nameEn: 'Iran', type: 'country', parent: 'middle-east' },
  { id: 'iraq', name: '伊拉克', nameEn: 'Iraq', type: 'country', parent: 'middle-east' },
  { id: 'israel', name: '以色列', nameEn: 'Israel', type: 'country', parent: 'middle-east' },
  { id: 'lebanon', name: '黎巴嫩', nameEn: 'Lebanon', type: 'country', parent: 'middle-east' },
  { id: 'syria', name: '叙利亚', nameEn: 'Syria', type: 'country', parent: 'middle-east' },

  // 大洋洲国家
  { id: 'australia', name: '澳大利亚', nameEn: 'Australia', type: 'country', parent: 'oceania' },
  { id: 'papua-new-guinea', name: '巴布亚新几内亚', nameEn: 'Papua New Guinea', type: 'country', parent: 'oceania' },
  { id: 'new-zealand', name: '新西兰', nameEn: 'New Zealand', type: 'country', parent: 'oceania' },

  // 地区 - 中东
  { id: 'fertile-crescent', name: '新月沃地', nameEn: 'Fertile Crescent', type: 'region', parent: 'middle-east' },
  { id: 'mesopotamia', name: '美索不达米亚', nameEn: 'Mesopotamia', type: 'region', parent: 'middle-east' },
  { id: 'anatolia', name: '安纳托利亚', nameEn: 'Anatolia', type: 'region', parent: 'turkey' },

  // 地区 - 中国
  { id: 'yangtze-river', name: '长江流域', nameEn: 'Yangtze River Valley', type: 'region', parent: 'china' },
  { id: 'yellow-river', name: '黄河流域', nameEn: 'Yellow River Valley', type: 'region', parent: 'china' },
  { id: 'yunnan', name: '云南', nameEn: 'Yunnan', type: 'region', parent: 'china' },
  { id: 'sichuan', name: '四川', nameEn: 'Sichuan', type: 'region', parent: 'china' },
  { id: 'guangdong', name: '广东', nameEn: 'Guangdong', type: 'region', parent: 'china' },
  { id: 'fujian', name: '福建', nameEn: 'Fujian', type: 'region', parent: 'china' },
  { id: 'zhejiang', name: '浙江', nameEn: 'Zhejiang', type: 'region', parent: 'china' },
  { id: 'jiangsu', name: '江苏', nameEn: 'Jiangsu', type: 'region', parent: 'china' },
  { id: 'shandong', name: '山东', nameEn: 'Shandong', type: 'region', parent: 'china' },
  { id: 'dongbei', name: '东北', nameEn: 'Northeast China', type: 'region', parent: 'china' },
  { id: 'xinjiang', name: '新疆', nameEn: 'Xinjiang', type: 'region', parent: 'china' },
  { id: 'inner-mongolia', name: '内蒙古', nameEn: 'Inner Mongolia', type: 'region', parent: 'china' },
  { id: 'hubei', name: '湖北', nameEn: 'Hubei', type: 'region', parent: 'china' },
  { id: 'hunan', name: '湖南', nameEn: 'Hunan', type: 'region', parent: 'china' },

  // 地区 - 印度
  { id: 'ganges', name: '恒河流域', nameEn: 'Ganges Valley', type: 'region', parent: 'india' },
  { id: 'indus', name: '印度河流域', nameEn: 'Indus Valley', type: 'region', parent: 'india' },
  { id: 'south-india', name: '南印度', nameEn: 'South India', type: 'region', parent: 'india' },

  // 地区 - 亚洲其他
  { id: 'southeast-asia', name: '东南亚', nameEn: 'Southeast Asia', type: 'region', parent: 'asia' },
  { id: 'central-asia', name: '中亚', nameEn: 'Central Asia', type: 'region', parent: 'asia' },
  { id: 'east-asia', name: '东亚', nameEn: 'East Asia', type: 'region', parent: 'asia' },

  // 地区 - 欧洲
  { id: 'mediterranean', name: '地中海地区', nameEn: 'Mediterranean Region', type: 'region', parent: 'europe' },
  { id: 'iberian', name: '伊比利亚半岛', nameEn: 'Iberian Peninsula', type: 'region', parent: 'europe' },

  // 地区 - 美洲
  { id: 'andes', name: '安第斯山区', nameEn: 'Andes Mountains', type: 'region', parent: 'south-america' },
  { id: 'amazon', name: '亚马逊流域', nameEn: 'Amazon Basin', type: 'region', parent: 'south-america' },
  { id: 'mesoamerica', name: '中美洲', nameEn: 'Mesoamerica', type: 'region', parent: 'north-america' },
  { id: 'caribbean', name: '加勒比地区', nameEn: 'Caribbean', type: 'region', parent: 'north-america' },

  // 地区 - 非洲
  { id: 'west-africa', name: '西非', nameEn: 'West Africa', type: 'region', parent: 'africa' },
  { id: 'east-africa', name: '东非', nameEn: 'East Africa', type: 'region', parent: 'africa' },
  { id: 'horn-of-africa', name: '非洲之角', nameEn: 'Horn of Africa', type: 'region', parent: 'africa' },
  { id: 'nile-valley', name: '尼罗河流域', nameEn: 'Nile Valley', type: 'region', parent: 'africa' }
];
