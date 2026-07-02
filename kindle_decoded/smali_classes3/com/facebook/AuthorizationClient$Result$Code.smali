.class final enum Lcom/facebook/AuthorizationClient$Result$Code;
.super Ljava/lang/Enum;
.source "AuthorizationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AuthorizationClient$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/AuthorizationClient$Result$Code;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/AuthorizationClient$Result$Code;

.field public static final enum CANCEL:Lcom/facebook/AuthorizationClient$Result$Code;

.field public static final enum ERROR:Lcom/facebook/AuthorizationClient$Result$Code;

.field public static final enum SUCCESS:Lcom/facebook/AuthorizationClient$Result$Code;


# instance fields
.field private final loggingValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1025
    new-instance v0, Lcom/facebook/AuthorizationClient$Result$Code;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    const-string v3, "success"

    invoke-direct {v0, v2, v1, v3}, Lcom/facebook/AuthorizationClient$Result$Code;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/AuthorizationClient$Result$Code;->SUCCESS:Lcom/facebook/AuthorizationClient$Result$Code;

    .line 1026
    new-instance v0, Lcom/facebook/AuthorizationClient$Result$Code;

    const/4 v2, 0x1

    const-string v3, "CANCEL"

    const-string v4, "cancel"

    invoke-direct {v0, v3, v2, v4}, Lcom/facebook/AuthorizationClient$Result$Code;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/AuthorizationClient$Result$Code;->CANCEL:Lcom/facebook/AuthorizationClient$Result$Code;

    .line 1027
    new-instance v0, Lcom/facebook/AuthorizationClient$Result$Code;

    const/4 v3, 0x2

    const-string v4, "ERROR"

    const-string v5, "error"

    invoke-direct {v0, v4, v3, v5}, Lcom/facebook/AuthorizationClient$Result$Code;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/AuthorizationClient$Result$Code;->ERROR:Lcom/facebook/AuthorizationClient$Result$Code;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/facebook/AuthorizationClient$Result$Code;

    .line 1024
    sget-object v5, Lcom/facebook/AuthorizationClient$Result$Code;->SUCCESS:Lcom/facebook/AuthorizationClient$Result$Code;

    aput-object v5, v4, v1

    sget-object v1, Lcom/facebook/AuthorizationClient$Result$Code;->CANCEL:Lcom/facebook/AuthorizationClient$Result$Code;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/facebook/AuthorizationClient$Result$Code;->$VALUES:[Lcom/facebook/AuthorizationClient$Result$Code;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1031
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1032
    iput-object p3, p0, Lcom/facebook/AuthorizationClient$Result$Code;->loggingValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result$Code;
    .locals 1

    .line 1024
    const-class v0, Lcom/facebook/AuthorizationClient$Result$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/AuthorizationClient$Result$Code;

    return-object p0
.end method

.method public static values()[Lcom/facebook/AuthorizationClient$Result$Code;
    .locals 1

    .line 1024
    sget-object v0, Lcom/facebook/AuthorizationClient$Result$Code;->$VALUES:[Lcom/facebook/AuthorizationClient$Result$Code;

    invoke-virtual {v0}, [Lcom/facebook/AuthorizationClient$Result$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/AuthorizationClient$Result$Code;

    return-object v0
.end method


# virtual methods
.method getLoggingValue()Ljava/lang/String;
    .locals 1

    .line 1037
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$Result$Code;->loggingValue:Ljava/lang/String;

    return-object v0
.end method
