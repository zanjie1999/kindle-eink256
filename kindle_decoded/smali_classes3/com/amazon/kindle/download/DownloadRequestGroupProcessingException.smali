.class public final Lcom/amazon/kindle/download/DownloadRequestGroupProcessingException;
.super Ljava/lang/RuntimeException;
.source "Exceptions.kt"


# instance fields
.field private final errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p2, p0, Lcom/amazon/kindle/download/DownloadRequestGroupProcessingException;->errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/download/DownloadRequestGroupProcessingException;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/amazon/kindle/download/DownloadRequestGroupProcessingException;->errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    return-object v0
.end method
