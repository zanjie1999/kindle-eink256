.class public final enum Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;
.super Ljava/lang/Enum;
.source "ImageLoaderExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;

.field public static final enum High:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;

.field public static final enum Low:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 69
    new-instance v0, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;

    const/4 v1, 0x0

    const-string v2, "Low"

    invoke-direct {v0, v2, v1}, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;->Low:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;

    new-instance v0, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;

    const/4 v2, 0x1

    const-string v3, "High"

    invoke-direct {v0, v3, v2}, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;->High:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;

    .line 68
    sget-object v4, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;->Low:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;->$VALUES:[Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;
    .locals 1

    .line 68
    const-class v0, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;

    return-object p0
.end method

.method public static values()[Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;
    .locals 1

    .line 68
    sget-object v0, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;->$VALUES:[Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;

    invoke-virtual {v0}, [Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;

    return-object v0
.end method
