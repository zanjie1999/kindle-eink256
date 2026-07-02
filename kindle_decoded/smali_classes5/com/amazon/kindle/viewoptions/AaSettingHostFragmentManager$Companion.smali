.class public final Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager$Companion;
.super Ljava/lang/Object;
.source "AaSettingHostFragmentManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final readerSettingChangeComplete()V
    .locals 1

    .line 174
    sget-object v0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->Companion:Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$Companion;->bookLayoutCompleted$KindleReaderLibrary_release()V

    return-void
.end method
