.class public final Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;
.super Ljava/lang/Object;
.source "ValidationFailureDetails.kt"


# instance fields
.field private final failureReason:Ljava/lang/String;

.field private final intent:Landroid/content/Intent;

.field private final negativeResultCode:Ljava/lang/Integer;

.field private final positiveResultCode:Ljava/lang/Integer;

.field private final requestCode:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "failureReason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->failureReason:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->requestCode:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->positiveResultCode:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->negativeResultCode:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic copy$default(Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->failureReason:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->intent:Landroid/content/Intent;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->requestCode:Ljava/lang/Integer;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->positiveResultCode:Ljava/lang/Integer;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->negativeResultCode:Ljava/lang/Integer;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->copy(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->failureReason:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->requestCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component4()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->positiveResultCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component5()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->negativeResultCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;
    .locals 7

    const-string v0, "failureReason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->failureReason:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->failureReason:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->requestCode:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->requestCode:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->positiveResultCode:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->positiveResultCode:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->negativeResultCode:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->negativeResultCode:Ljava/lang/Integer;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getFailureReason()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->failureReason:Ljava/lang/String;

    return-object v0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public final getNegativeResultCode()Ljava/lang/Integer;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->negativeResultCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPositiveResultCode()Ljava/lang/Integer;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->positiveResultCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRequestCode()Ljava/lang/Integer;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->requestCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->failureReason:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->requestCode:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->positiveResultCode:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->negativeResultCode:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ValidationFailureDetails(failureReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->failureReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->requestCode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", positiveResultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->positiveResultCode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", negativeResultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->negativeResultCode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
