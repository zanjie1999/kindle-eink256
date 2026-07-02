.class synthetic Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$1;
.super Ljava/lang/Object;
.source "ImageLoaderExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$nwstd$model$replica$ImageLoaderExecutor$Priority:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    invoke-static {}, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;->values()[Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$1;->$SwitchMap$com$amazon$nwstd$model$replica$ImageLoaderExecutor$Priority:[I

    :try_start_0
    sget-object v1, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;->Low:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$1;->$SwitchMap$com$amazon$nwstd$model$replica$ImageLoaderExecutor$Priority:[I

    sget-object v1, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;->High:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
