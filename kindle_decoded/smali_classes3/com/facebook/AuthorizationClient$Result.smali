.class Lcom/facebook/AuthorizationClient$Result;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AuthorizationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AuthorizationClient$Result$Code;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final code:Lcom/facebook/AuthorizationClient$Result$Code;

.field final errorCode:Ljava/lang/String;

.field final errorMessage:Ljava/lang/String;

.field loggingExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final request:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

.field final token:Lcom/facebook/AccessToken;


# direct methods
.method private constructor <init>(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Lcom/facebook/AuthorizationClient$Result$Code;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1050
    iput-object p1, p0, Lcom/facebook/AuthorizationClient$Result;->request:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    .line 1051
    iput-object p3, p0, Lcom/facebook/AuthorizationClient$Result;->token:Lcom/facebook/AccessToken;

    .line 1052
    iput-object p4, p0, Lcom/facebook/AuthorizationClient$Result;->errorMessage:Ljava/lang/String;

    .line 1053
    iput-object p2, p0, Lcom/facebook/AuthorizationClient$Result;->code:Lcom/facebook/AuthorizationClient$Result$Code;

    .line 1054
    iput-object p5, p0, Lcom/facebook/AuthorizationClient$Result;->errorCode:Ljava/lang/String;

    return-void
.end method

.method static createCancelResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;
    .locals 7

    .line 1062
    new-instance v6, Lcom/facebook/AuthorizationClient$Result;

    sget-object v2, Lcom/facebook/AuthorizationClient$Result$Code;->CANCEL:Lcom/facebook/AuthorizationClient$Result$Code;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AuthorizationClient$Result;-><init>(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Lcom/facebook/AuthorizationClient$Result$Code;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method static createErrorResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;
    .locals 1

    const/4 v0, 0x0

    .line 1066
    invoke-static {p0, p1, p2, v0}, Lcom/facebook/AuthorizationClient$Result;->createErrorResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object p0

    return-object p0
.end method

.method static createErrorResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 1071
    invoke-static {v0}, Lcom/facebook/internal/Utility;->asListNoNulls([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string p2, ": "

    invoke-static {p2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 1072
    new-instance p1, Lcom/facebook/AuthorizationClient$Result;

    sget-object v2, Lcom/facebook/AuthorizationClient$Result$Code;->ERROR:Lcom/facebook/AuthorizationClient$Result$Code;

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AuthorizationClient$Result;-><init>(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Lcom/facebook/AuthorizationClient$Result$Code;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method static createTokenResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Lcom/facebook/AccessToken;)Lcom/facebook/AuthorizationClient$Result;
    .locals 7

    .line 1058
    new-instance v6, Lcom/facebook/AuthorizationClient$Result;

    sget-object v2, Lcom/facebook/AuthorizationClient$Result$Code;->SUCCESS:Lcom/facebook/AuthorizationClient$Result$Code;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AuthorizationClient$Result;-><init>(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Lcom/facebook/AuthorizationClient$Result$Code;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method
