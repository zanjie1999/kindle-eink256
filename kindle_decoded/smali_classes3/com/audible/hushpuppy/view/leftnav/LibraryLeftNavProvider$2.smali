.class synthetic Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider$2;
.super Ljava/lang/Object;
.source "LibraryLeftNavProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kindle$krx$providers$ILibraryLeftNavProviderV2$LeftNavSection:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 189
    invoke-static {}, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;->values()[Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider$2;->$SwitchMap$com$amazon$kindle$krx$providers$ILibraryLeftNavProviderV2$LeftNavSection:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;->DISCOVER:Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
