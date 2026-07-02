.class public Lcom/amazon/ea/purchase/PurchaseClient$Result;
.super Ljava/lang/Object;
.source "PurchaseClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/purchase/PurchaseClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;
    }
.end annotation


# instance fields
.field public final failureReason:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

.field public final message:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final purchaseRecord:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional<",
            "Lcom/amazon/ea/purchase/model/PurchaseRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final readingStreamsMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final wasSuccessful:Z


# direct methods
.method private constructor <init>(ZLcom/amazon/ea/purchase/model/FailRecord$ReasonCode;Ljava/lang/String;Lcom/amazon/ea/purchase/model/PurchaseRecord;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;",
            "Ljava/lang/String;",
            "Lcom/amazon/ea/purchase/model/PurchaseRecord;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-boolean p1, p0, Lcom/amazon/ea/purchase/PurchaseClient$Result;->wasSuccessful:Z

    .line 91
    iput-object p2, p0, Lcom/amazon/ea/purchase/PurchaseClient$Result;->failureReason:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    .line 92
    invoke-static {p3}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/purchase/PurchaseClient$Result;->message:Lcom/google/common/base/Optional;

    .line 93
    invoke-static {p4}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/purchase/PurchaseClient$Result;->purchaseRecord:Lcom/google/common/base/Optional;

    .line 94
    iput-object p5, p0, Lcom/amazon/ea/purchase/PurchaseClient$Result;->readingStreamsMetadata:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(ZLcom/amazon/ea/purchase/model/FailRecord$ReasonCode;Ljava/lang/String;Lcom/amazon/ea/purchase/model/PurchaseRecord;Ljava/util/Map;Lcom/amazon/ea/purchase/PurchaseClient$1;)V
    .locals 0

    .line 43
    invoke-direct/range {p0 .. p5}, Lcom/amazon/ea/purchase/PurchaseClient$Result;-><init>(ZLcom/amazon/ea/purchase/model/FailRecord$ReasonCode;Ljava/lang/String;Lcom/amazon/ea/purchase/model/PurchaseRecord;Ljava/util/Map;)V

    return-void
.end method
