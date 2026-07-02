.class public final Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;
.super Ljava/lang/Object;
.source "BookOpenFailureDetails.kt"


# instance fields
.field private final errorCode:Ljava/lang/String;

.field private final errorLink:Ljava/lang/String;

.field private final errorLinkTitle:Ljava/lang/String;

.field private final errorMessage:Ljava/lang/String;

.field private final errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

.field private final errorTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "errorState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    iput-object p2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorMessage:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorTitle:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorLink:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorLinkTitle:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorCode:Ljava/lang/String;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorMessage:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorTitle:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorLink:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorLinkTitle:Ljava/lang/String;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->copy(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorLink:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorLinkTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;
    .locals 8

    const-string v0, "errorState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;-><init>(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    iget-object v1, p1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorCode:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorMessage:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorTitle:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorLink:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorLink:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorLinkTitle:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorLinkTitle:Ljava/lang/String;

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

.method public final getErrorCode()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorLink()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorLink:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorLinkTitle()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorLinkTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    return-object v0
.end method

.method public final getErrorTitle()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorCode:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorMessage:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorTitle:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorLink:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorLinkTitle:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BookOpenFailureDetails(errorState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorLink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorLinkTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;->errorLinkTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
