.class public final enum Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;
.super Ljava/lang/Enum;
.source "AccessibilityActionConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

.field public static final enum ACTION_ACCESSIBILITY_FOCUS:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

.field public static final enum ACTION_CLEAR_ACCESSIBILITY_FOCUS:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

.field public static final enum ACTION_CLEAR_FOCUS:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

.field public static final enum ACTION_CLEAR_SELECTION:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

.field public static final enum ACTION_CLICK:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

.field public static final enum ACTION_FOCUS:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

.field public static final enum ACTION_LONG_CLICK:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

.field public static final enum ACTION_NEXT_AT_MOVEMENT_GRANULARITY:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

.field public static final enum ACTION_NEXT_HTML_ELEMENT:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

.field public static final enum ACTION_NONE:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

.field public static final enum ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

.field public static final enum ACTION_PREVIOUS_HTML_ELEMENT:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

.field public static final enum ACTION_SCROLL_BACKWARD:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

.field public static final enum ACTION_SCROLL_FORWARD:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

.field public static final enum ACTION_SELECT:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 4
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    const/4 v1, 0x0

    const-string v2, "ACTION_NONE"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_NONE:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    .line 5
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    const/4 v2, 0x1

    const-string v3, "ACTION_FOCUS"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_FOCUS:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    .line 6
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    const/4 v3, 0x2

    const-string v4, "ACTION_CLEAR_FOCUS"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_CLEAR_FOCUS:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    .line 7
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    const/4 v4, 0x3

    const/4 v5, 0x4

    const-string v6, "ACTION_SELECT"

    invoke-direct {v0, v6, v4, v5}, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_SELECT:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    .line 8
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    const/16 v6, 0x8

    const-string v7, "ACTION_CLEAR_SELECTION"

    invoke-direct {v0, v7, v5, v6}, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_CLEAR_SELECTION:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    .line 9
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    const/4 v7, 0x5

    const-string v8, "ACTION_CLICK"

    const/16 v9, 0x10

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_CLICK:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    .line 10
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    const/4 v8, 0x6

    const-string v9, "ACTION_LONG_CLICK"

    const/16 v10, 0x20

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_LONG_CLICK:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    .line 11
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    const/4 v9, 0x7

    const-string v10, "ACTION_ACCESSIBILITY_FOCUS"

    const/16 v11, 0x40

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_ACCESSIBILITY_FOCUS:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    .line 12
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    const-string v10, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    const/16 v11, 0x80

    invoke-direct {v0, v10, v6, v11}, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    .line 13
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    const/16 v10, 0x9

    const-string v11, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    const/16 v12, 0x100

    invoke-direct {v0, v11, v10, v12}, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_NEXT_AT_MOVEMENT_GRANULARITY:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    .line 14
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    const/16 v11, 0xa

    const-string v12, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    const/16 v13, 0x200

    invoke-direct {v0, v12, v11, v13}, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    .line 15
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    const/16 v12, 0xb

    const-string v13, "ACTION_NEXT_HTML_ELEMENT"

    const/16 v14, 0x400

    invoke-direct {v0, v13, v12, v14}, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_NEXT_HTML_ELEMENT:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    .line 16
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    const/16 v13, 0xc

    const-string v14, "ACTION_PREVIOUS_HTML_ELEMENT"

    const/16 v15, 0x800

    invoke-direct {v0, v14, v13, v15}, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_PREVIOUS_HTML_ELEMENT:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    .line 17
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    const/16 v14, 0xd

    const-string v15, "ACTION_SCROLL_FORWARD"

    const/16 v13, 0x1000

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_SCROLL_FORWARD:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    .line 18
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    const/16 v13, 0xe

    const-string v15, "ACTION_SCROLL_BACKWARD"

    const/16 v14, 0x2000

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_SCROLL_BACKWARD:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    const/16 v14, 0xf

    new-array v14, v14, [Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    .line 3
    sget-object v15, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_NONE:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    aput-object v15, v14, v1

    sget-object v1, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_FOCUS:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_CLEAR_FOCUS:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    aput-object v1, v14, v3

    sget-object v1, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_SELECT:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    aput-object v1, v14, v4

    sget-object v1, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_CLEAR_SELECTION:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    aput-object v1, v14, v5

    sget-object v1, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_CLICK:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    aput-object v1, v14, v7

    sget-object v1, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_LONG_CLICK:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    aput-object v1, v14, v8

    sget-object v1, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_ACCESSIBILITY_FOCUS:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    aput-object v1, v14, v9

    sget-object v1, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    aput-object v1, v14, v6

    sget-object v1, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_NEXT_AT_MOVEMENT_GRANULARITY:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    aput-object v1, v14, v10

    sget-object v1, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    aput-object v1, v14, v11

    sget-object v1, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_NEXT_HTML_ELEMENT:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    aput-object v1, v14, v12

    sget-object v1, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_PREVIOUS_HTML_ELEMENT:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    const/16 v2, 0xc

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_SCROLL_FORWARD:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    aput-object v0, v14, v13

    sput-object v14, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->$VALUES:[Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->id:I

    return-void
.end method

.method public static fromSerialization(I)Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;
    .locals 5

    .line 31
    invoke-static {}, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->values()[Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 32
    iget v4, v3, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->id:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_1
    sget-object p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_NONE:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;
    .locals 1

    .line 3
    const-class v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;
    .locals 1

    .line 3
    sget-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->$VALUES:[Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    return-object v0
.end method
