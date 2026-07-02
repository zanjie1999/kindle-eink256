.class synthetic Lcom/amazon/kcp/reader/accessibility/ViewAccessibilityInitializer$2;
.super Ljava/lang/Object;
.source "ViewAccessibilityInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/accessibility/ViewAccessibilityInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kcp$reader$accessibility$AccessibilityActionConstants:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    invoke-static {}, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->values()[Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/reader/accessibility/ViewAccessibilityInitializer$2;->$SwitchMap$com$amazon$kcp$reader$accessibility$AccessibilityActionConstants:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_SCROLL_BACKWARD:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kcp/reader/accessibility/ViewAccessibilityInitializer$2;->$SwitchMap$com$amazon$kcp$reader$accessibility$AccessibilityActionConstants:[I

    sget-object v1, Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;->ACTION_SCROLL_FORWARD:Lcom/amazon/kcp/reader/accessibility/AccessibilityActionConstants;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
