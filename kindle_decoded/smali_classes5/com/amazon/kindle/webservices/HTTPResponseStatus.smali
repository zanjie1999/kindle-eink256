.class public abstract Lcom/amazon/kindle/webservices/HTTPResponseStatus;
.super Ljava/lang/Object;
.source "HttpResponseProperties.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/webservices/HTTPResponseStatus$Informational;,
        Lcom/amazon/kindle/webservices/HTTPResponseStatus$Successful;,
        Lcom/amazon/kindle/webservices/HTTPResponseStatus$Redirects;,
        Lcom/amazon/kindle/webservices/HTTPResponseStatus$ClientError;,
        Lcom/amazon/kindle/webservices/HTTPResponseStatus$ServerError;,
        Lcom/amazon/kindle/webservices/HTTPResponseStatus$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/webservices/HTTPResponseStatus$Companion;


# instance fields
.field private final httpCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/webservices/HTTPResponseStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/webservices/HTTPResponseStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/webservices/HTTPResponseStatus;->Companion:Lcom/amazon/kindle/webservices/HTTPResponseStatus$Companion;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amazon/kindle/webservices/HTTPResponseStatus;->httpCode:I

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/amazon/kindle/webservices/HTTPResponseStatus;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getHttpCode()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/amazon/kindle/webservices/HTTPResponseStatus;->httpCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(httpCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/webservices/HTTPResponseStatus;->httpCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
