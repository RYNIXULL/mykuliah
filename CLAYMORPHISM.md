CLAYMORPHISM.md — design spec for AI agents
Follow these tokens verbatim. Do not improvise colors or shadows.

== 1. Color tokens (use these hex values, no substitutes) ==
Backgrounds
  --bg-app:      #F7F5FB  /* tinted near-white, never pure #FFF */
  --bg-raised:   #FFFFFF  /* only for floating sheets over --bg-app */
Surfaces (the clay itself, pick by semantic role)
  --surface-lavender: #B8A6FF  /* primary cards, hero blocks */
  --surface-sky:      #9EC9F0  /* info, secondary cards */
  --surface-mint:     #7DD4A8  /* success, positive stats */
  --surface-peach:    #FFB59E  /* warm cards, highlights */
  --surface-pink:     #F5B8D0  /* accent, playful cards */
  --surface-lemon:    #F5D77A  /* attention rows, badges */
Actions & status (saturated, reserved for intent)
  --action-primary:   #FF7A6B  /* coral: confirm, start, play */
  --action-on:        #FFFFFF  /* label on coral, ratio >= 4.5 */
  --status-active:    #7DD4A8  /* green pill */
  --status-pending:   #F5D77A  /* yellow pill */
  --status-archived:  #C9B5FF  /* muted lavender pill */
Text
  --text-strong:  #2E2A3F  /* headings, never pure black */
  --text-muted:   #6B6580  /* captions, secondary labels */

Rule: one saturated --action-* per screen as the hero CTA.
Surfaces carry the mood; actions carry the verb.

== 2. Radius tokens (chunky is the brand) ==
  --r-card:   28px   /* range 24-32 by card size */
  --r-button: 18px   /* range 16-20 */
  --r-chip:   999px  /* pills are fully round, not 12px */
  --r-input:  16px
  --r-icon:   20px   /* squircle app-icon tiles */
Never drop below 16px on interactive elements, or the soft
shadow reads as a flat drop-shadow instead of molded clay.

== 3. Spacing & sizing scale (8pt grid) ==
  4 / 8 / 12 / 16 / 24 / 32 / 48
  Card padding: 24 (compact) to 28 (default)
  Gap between clay siblings: 16 min (shadows need breathing room)
  Tap target: 48x48 min, button height 52-56

== 4. The shadow recipe (the whole look lives here) ==
Every clay surface = 3 stacked shadows, all keyed to its own hue:
  box-shadow:
    8px 8px 24px rgba(H, 0.35),          /* colored drop, SE */
    -8px -8px 24px rgba(255,255,255,0.6),/* light lift, NW */
    inset 4px 4px 8px rgba(255,255,255,0.5),  /* top-left sheen */
    inset -6px -6px 12px rgba(H, 0.30);  /* bottom-right depth */
H = the surface's OWN color darkened ~15%, never gray.
  lavender surface -> shadow rgba(140,108,255,..)
  coral button     -> shadow rgba(255,90,75,..)
Light always comes from top-left; depth pools bottom-right.
Keep it consistent across the entire screen.

Elevation levels (do not stack clay on clay beyond level 2):
  L0 flat tint     : no shadow, just --bg-app
  L1 resting card  : recipe above at full strength
  L2 floating sheet: same recipe, drop offset 12px, blur 32px

== 5. Component recipes ==
Button (primary):
  bg --action-primary, label --action-on bold 16,
  radius --r-button, height 54, padding 0 24,
  shadow recipe keyed to coral,
  :active -> transform scale(0.97) + all shadow offsets halve
  (the squish: it sinks into the page, not just smaller)
Button (secondary):
  bg --surface-lavender or white, label --text-strong,
  same geometry, softer shadow strength (0.25)
Card:
  bg a --surface-*, radius --r-card, padding 24-28,
  full shadow recipe, one heading + content, no inner borders
Chip / status pill:
  radius 999, padding 6 14, height 28-32,
  bg the matching --status-*, label --text-strong 13 semibold,
  shadow at half strength (chips are small, keep it subtle)
Toggle switch:
  track 52x32 radius 999, off=--bg-app inset shadow,
  on=--surface-sky, thumb white 26px with tiny clay shadow
Input:
  bg --bg-app, radius --r-input,
  INSET shadow only (pressed-inward well), no outer drop,
  inset 3px 3px 8px rgba(H,0.2), inset -3px -3px 8px #FFF
Bottom nav bar:
  bg white, radius --r-card on top corners or floating pill,
  active item -> coral icon + label, inactive --text-muted,
  one clay shadow lifting the whole bar
App-icon tile:
  squircle --r-icon, single --surface-* fill,
  full recipe, optional 3D glyph centered

== 6. Typography ==
  Family: rounded sans — Quicksand, Nunito, Outfit, Fredoka
  Weights: 500 body, 600 labels, 700 headings (chunky to match)
  Sizes: h1 28-32, h2 22, body 16 (min), caption 13
  Letter-spacing: 0.01em body, tighten headings to 0
  Line-height: 1.4 body, 1.2 headings

== 7. Do ==
  - Match every shadow color to its surface hue
  - Keep light source top-left on the entire screen
  - Use exactly one --action-* CTA per view
  - Give each clay element 16px+ of breathing room
  - Pair chunky radii with chunky bold type

== 8. Don't (the mistakes agents repeat) ==
  - Gray/neutral shadows — kills the molded feel instantly
  - Radius under 16 on buttons — reads as flat-with-shadow
  - Pure #FFF page background — erases the soft tinted glow
  - Skipping the inset top-left sheen — surface looks stuck flat
  - Stacking clay on clay 3+ deep — turns to mush
  - Sharp grotesk fonts (Inter, Helvetica) fighting the round mood
  - Multiple saturated CTAs competing on one screen

== 9. When to use / avoid ==
  Use:   onboarding, kids & education, friendly fintech, savings
         apps, 3D landing pages, empty states, celebratory moments
  Avoid: dense data tables, analytics dashboards, enterprise
         tools, anything text-heavy or high-density