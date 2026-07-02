.class synthetic Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager$2;
.super Ljava/lang/Object;
.source "LegacyTutorialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kindle$krx$tutorial$JITTutorial$Asset:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 373
    invoke-static {}, Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;->values()[Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager$2;->$SwitchMap$com$amazon$kindle$krx$tutorial$JITTutorial$Asset:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;->LEFT_PANEL:Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
