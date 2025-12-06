import { Location } from '../models/DataModels';

export const LOCATIONS_DATA: Location[] = [
  // 大洲
  { id: 'asia', name: '亚洲', type: 'continent' },
  { id: 'europe', name: '欧洲', type: 'continent' },
  { id: 'africa', name: '非洲', type: 'continent' },
  { id: 'north-america', name: '北美洲', type: 'continent' },
  { id: 'south-america', name: '南美洲', type: 'continent' },
  { id: 'oceania', name: '大洋洲', type: 'continent' },
  { id: 'middle-east', name: '中东', type: 'continent' },

  // 亚洲国家
  { id: 'china', name: '中国', type: 'country', parent: 'asia' },
  { id: 'india', name: '印度', type: 'country', parent: 'asia' },
  { id: 'japan', name: '日本', type: 'country', parent: 'asia' },
  { id: 'korea', name: '韩国', type: 'country', parent: 'asia' },
  { id: 'vietnam', name: '越南', type: 'country', parent: 'asia' },
  { id: 'thailand', name: '泰国', type: 'country', parent: 'asia' },
  { id: 'indonesia', name: '印度尼西亚', type: 'country', parent: 'asia' },
  { id: 'malaysia', name: '马来西亚', type: 'country', parent: 'asia' },
  { id: 'myanmar', name: '缅甸', type: 'country', parent: 'asia' },
  { id: 'nepal', name: '尼泊尔', type: 'country', parent: 'asia' },
  { id: 'pakistan', name: '巴基斯坦', type: 'country', parent: 'asia' },
  { id: 'philippines', name: '菲律宾', type: 'country', parent: 'asia' },
  { id: 'sri-lanka', name: '斯里兰卡', type: 'country', parent: 'asia' },

  // 欧洲国家
  { id: 'italy', name: '意大利', type: 'country', parent: 'europe' },
  { id: 'france', name: '法国', type: 'country', parent: 'europe' },
  { id: 'spain', name: '西班牙', type: 'country', parent: 'europe' },
  { id: 'germany', name: '德国', type: 'country', parent: 'europe' },
  { id: 'uk', name: '英国', type: 'country', parent: 'europe' },
  { id: 'russia', name: '俄罗斯', type: 'country', parent: 'europe' },
  { id: 'netherlands', name: '荷兰', type: 'country', parent: 'europe' },
  { id: 'belgium', name: '比利时', type: 'country', parent: 'europe' },
  { id: 'austria', name: '奥地利', type: 'country', parent: 'europe' },
  { id: 'switzerland', name: '瑞士', type: 'country', parent: 'europe' },
  { id: 'ireland', name: '爱尔兰', type: 'country', parent: 'europe' },
  { id: 'poland', name: '波兰', type: 'country', parent: 'europe' },
  { id: 'greece', name: '希腊', type: 'country', parent: 'europe' },
  { id: 'portugal', name: '葡萄牙', type: 'country', parent: 'europe' },

  // 北美洲国家
  { id: 'usa', name: '美国', type: 'country', parent: 'north-america' },
  { id: 'mexico', name: '墨西哥', type: 'country', parent: 'north-america' },
  { id: 'canada', name: '加拿大', type: 'country', parent: 'north-america' },

  // 南美洲国家
  { id: 'brazil', name: '巴西', type: 'country', parent: 'south-america' },
  { id: 'peru', name: '秘鲁', type: 'country', parent: 'south-america' },
  { id: 'argentina', name: '阿根廷', type: 'country', parent: 'south-america' },
  { id: 'colombia', name: '哥伦比亚', type: 'country', parent: 'south-america' },
  { id: 'ecuador', name: '厄瓜多尔', type: 'country', parent: 'south-america' },

  // 非洲国家
  { id: 'egypt', name: '埃及', type: 'country', parent: 'africa' },
  { id: 'ethiopia', name: '埃塞俄比亚', type: 'country', parent: 'africa' },
  { id: 'kenya', name: '肯尼亚', type: 'country', parent: 'africa' },
  { id: 'sudan', name: '苏丹', type: 'country', parent: 'africa' },
  { id: 'tanzania', name: '坦桑尼亚', type: 'country', parent: 'africa' },
  { id: 'ghana', name: '加纳', type: 'country', parent: 'africa' },
  { id: 'morocco', name: '摩洛哥', type: 'country', parent: 'africa' },
  { id: 'nigeria', name: '尼日利亚', type: 'country', parent: 'africa' },

  // 中东国家
  { id: 'turkey', name: '土耳其', type: 'country', parent: 'middle-east' },
  { id: 'iran', name: '伊朗', type: 'country', parent: 'middle-east' },
  { id: 'iraq', name: '伊拉克', type: 'country', parent: 'middle-east' },
  { id: 'israel', name: '以色列', type: 'country', parent: 'middle-east' },
  { id: 'lebanon', name: '黎巴嫩', type: 'country', parent: 'middle-east' },
  { id: 'syria', name: '叙利亚', type: 'country', parent: 'middle-east' },

  // 大洋洲国家
  { id: 'australia', name: '澳大利亚', type: 'country', parent: 'oceania' },
  { id: 'papua-new-guinea', name: '巴布亚新几内亚', type: 'country', parent: 'oceania' },
  { id: 'new-zealand', name: '新西兰', type: 'country', parent: 'oceania' },

  // 地区
  { id: 'fertile-crescent', name: '新月沃地', type: 'region', parent: 'middle-east' },
  { id: 'mesopotamia', name: '美索不达米亚', type: 'region', parent: 'middle-east' },
  { id: 'yangtze-river', name: '长江流域', type: 'region', parent: 'china' },
  { id: 'yellow-river', name: '黄河流域', type: 'region', parent: 'china' },
  { id: 'yunnan', name: '云南', type: 'region', parent: 'china' },
  { id: 'southeast-asia', name: '东南亚', type: 'region', parent: 'asia' },
  { id: 'central-asia', name: '中亚', type: 'region', parent: 'asia' },
  { id: 'south-india', name: '南印度', type: 'region', parent: 'india' },
  { id: 'mediterranean', name: '地中海地区', type: 'region', parent: 'europe' },
  { id: 'andes', name: '安第斯山区', type: 'region', parent: 'south-america' },
  { id: 'amazon', name: '亚马逊流域', type: 'region', parent: 'south-america' },
  { id: 'mesoamerica', name: '中美洲', type: 'region', parent: 'north-america' },
  { id: 'caribbean', name: '加勒比地区', type: 'region', parent: 'north-america' },
  { id: 'west-africa', name: '西非', type: 'region', parent: 'africa' },
  { id: 'horn-of-africa', name: '非洲之角', type: 'region', parent: 'africa' },
  { id: 'anatolia', name: '安纳托利亚', type: 'region', parent: 'turkey' }
];
