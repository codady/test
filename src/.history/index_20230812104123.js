'use strict'
import { ax } from './js/global/namespace';
import getDom from './js/utils/getDom';
ax.getDom = getDom;
console.log('AXUI version:', ax.version);
