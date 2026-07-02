.class public Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/data/ExceptionData;
.super Ljava/lang/Object;
.source "ExceptionData.java"


# instance fields
.field private final mData:[B

.field private final mException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>([BLjava/lang/Exception;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/data/ExceptionData;->mData:[B

    .line 17
    iput-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/data/ExceptionData;->mException:Ljava/lang/Exception;

    return-void

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "throwable can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/data/ExceptionData;->mException:Ljava/lang/Exception;

    return-object v0
.end method
