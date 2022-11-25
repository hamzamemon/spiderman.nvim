lua << EOF
package.loaded['sunflower'] = nil
package.loaded['sunflower.colors'] = nil
package.loaded['sunflower.theme'] = nil
package.loaded['sunflower.util'] = nil

require('sunflower').set()
EOF
