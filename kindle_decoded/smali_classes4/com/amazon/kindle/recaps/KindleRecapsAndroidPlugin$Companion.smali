.class public final Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;
.super Ljava/lang/Object;
.source "KindleRecapsAndroidPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDebugConfig()Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugConfig;
    .locals 1

    .line 19
    invoke-static {}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->access$getDebugConfig$cp()Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugConfig;

    move-result-object v0

    return-object v0
.end method

.method public final getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 18
    invoke-static {}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->access$getSdk$cp()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    return-object v0
.end method
