varying highp vec4 position;
varying highp vec2 var_texcoord0;
varying highp vec4 var_color;

uniform highp sampler2D DIFFUSE_TEXTURE;
uniform highp vec4 tint;

void main()
{
    // Pre-multiply alpha since all runtime textures already are
    highp vec4 tint_pm = vec4(tint.xyz * tint.w, tint.w);
    // var_color is vertex color from the particle system, already pre-multiplied
    gl_FragColor = texture2D(DIFFUSE_TEXTURE, var_texcoord0.xy) * var_color * tint_pm;
}
