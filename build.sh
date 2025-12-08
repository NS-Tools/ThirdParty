# Install dependencies
npm upgrade 

# Remove previous files
rm -f bignumber.js bignumber.d.ts immutable.js immutable.d.ts lodash.js moment.js moment.d.ts

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