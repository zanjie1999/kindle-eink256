.class public Lcom/amazon/devicesetupservice/v1/WepKeyConfiguration;
.super Ljava/lang/Object;
.source "WepKeyConfiguration.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private keyIndex:I

.field private wepKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.v1.WepKeyConfiguration"

    aput-object v2, v0, v1

    .line 29
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/v1/WepKeyConfiguration;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 47
    instance-of v0, p1, Lcom/amazon/devicesetupservice/v1/WepKeyConfiguration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 51
    :cond_0
    check-cast p1, Lcom/amazon/devicesetupservice/v1/WepKeyConfiguration;

    .line 53
    iget v0, p0, Lcom/amazon/devicesetupservice/v1/WepKeyConfiguration;->keyIndex:I

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Lcom/amazon/devicesetupservice/v1/WepKeyConfiguration;->keyIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/WepKeyConfiguration;->wepKeyList:Ljava/util/List;

    iget-object p1, p1, Lcom/amazon/devicesetupservice/v1/WepKeyConfiguration;->wepKeyList:Ljava/util/List;

    .line 55
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getKeyIndex()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/amazon/devicesetupservice/v1/WepKeyConfiguration;->keyIndex:I

    return v0
.end method

.method public getWepKeyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/WepKeyConfiguration;->wepKeyList:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 36
    sget v1, Lcom/amazon/devicesetupservice/v1/WepKeyConfiguration;->classNameHashCode:I

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/devicesetupservice/v1/WepKeyConfiguration;->keyIndex:I

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/WepKeyConfiguration;->wepKeyList:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 36
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setKeyIndex(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/amazon/devicesetupservice/v1/WepKeyConfiguration;->keyIndex:I

    return-void
.end method

.method public setWepKeyList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/WepKeyConfiguration;->wepKeyList:Ljava/util/List;

    return-void
.end method
