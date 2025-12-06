import { log } from 'N';
import * as _ from './thirdparty/lodash';

var test = _.join(['Hello', 'world'], ' ');
log.debug('Lodash Test', test);