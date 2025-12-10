# Install dependencies
npm upgrade 

# Remove previous files
rm -rf ./*.js ./*.d.ts locale lodash ramda

# BigNumber
cp node_modules/bignumber.js/bignumber.js .
cp node_modules/bignumber.js/types.d.ts ./bignumber-types.d.ts
cp node_modules/bignumber.js/bignumber.d.ts ./bignumber.d.ts
sed -i -e 's/\.\/types\.\d\.ts/\.\/bignumber-types\.d\.ts/g' ./bignumber.d.ts

# immutable
cp node_modules/immutable/dist/immutable.js ./immutable.js
cp node_modules/immutable/dist/immutable.d.ts .

# lodash
npx lodash exports=amd -p
mv ./lodash.custom.min.js ./lodash.js
cp -R node_modules/@types/lodash .

# moment
cp node_modules/moment/moment.js .
cp node_modules/moment/ts3.1-typings/moment.d.ts .

# papaparse
cp node_modules/papaparse/papaparse.js .
cp node_modules/@types/papaparse/index.d.ts ./papaparse.d.ts

# Ramda
cp node_modules/ramda/dist/ramda.js .
cp -R node_modules/types-ramda/es ./ramda

# DayJS
cp node_modules/dayjs/dayjs.min.js ./dayjs.js
cp node_modules/dayjs/index.d.ts ./dayjs.d.ts
cp node_modules/dayjs/locale/index.d.ts ./dayjs-locale.d.ts
cp node_modules/dayjs/locale/types.d.ts ./dayjs-locale-types.d.ts
# @TODO: Rename the locale directory to dayjs-locale if there's a collision
cp -R node_modules/dayjs/locale .
sed -i -e 's/\.\/locale\/index\.d\.ts/\.\/dayjs-locale\.d\.ts/g' ./dayjs.d.ts
sed -i -e 's/\.\/types\.\d\.ts/\.\/dayjs-locale-types\.d\.ts/g' ./dayjs-locale.d.ts
