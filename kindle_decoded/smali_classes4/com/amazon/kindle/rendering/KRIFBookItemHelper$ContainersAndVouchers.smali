.class public Lcom/amazon/kindle/rendering/KRIFBookItemHelper$ContainersAndVouchers;
.super Ljava/lang/Object;
.source "KRIFBookItemHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/rendering/KRIFBookItemHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContainersAndVouchers"
.end annotation


# instance fields
.field private containers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private vouchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItemHelper$ContainersAndVouchers;->containers:Ljava/util/List;

    .line 120
    iput-object p2, p0, Lcom/amazon/kindle/rendering/KRIFBookItemHelper$ContainersAndVouchers;->vouchers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getContainers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItemHelper$ContainersAndVouchers;->containers:Ljava/util/List;

    return-object v0
.end method

.method public getVouchers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItemHelper$ContainersAndVouchers;->vouchers:Ljava/util/List;

    return-object v0
.end method
