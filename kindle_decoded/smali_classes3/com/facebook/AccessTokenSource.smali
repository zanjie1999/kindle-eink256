.class public final enum Lcom/facebook/AccessTokenSource;
.super Ljava/lang/Enum;
.source "AccessTokenSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/AccessTokenSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/AccessTokenSource;

.field public static final enum CLIENT_TOKEN:Lcom/facebook/AccessTokenSource;

.field public static final enum FACEBOOK_APPLICATION_NATIVE:Lcom/facebook/AccessTokenSource;

.field public static final enum FACEBOOK_APPLICATION_SERVICE:Lcom/facebook/AccessTokenSource;

.field public static final enum FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

.field public static final enum NONE:Lcom/facebook/AccessTokenSource;

.field public static final enum TEST_USER:Lcom/facebook/AccessTokenSource;

.field public static final enum WEB_VIEW:Lcom/facebook/AccessTokenSource;


# instance fields
.field private final canExtendToken:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 26
    new-instance v0, Lcom/facebook/AccessTokenSource;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1, v1}, Lcom/facebook/AccessTokenSource;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/AccessTokenSource;->NONE:Lcom/facebook/AccessTokenSource;

    .line 31
    new-instance v0, Lcom/facebook/AccessTokenSource;

    const/4 v2, 0x1

    const-string v3, "FACEBOOK_APPLICATION_WEB"

    invoke-direct {v0, v3, v2, v2}, Lcom/facebook/AccessTokenSource;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    .line 36
    new-instance v0, Lcom/facebook/AccessTokenSource;

    const/4 v3, 0x2

    const-string v4, "FACEBOOK_APPLICATION_NATIVE"

    invoke-direct {v0, v4, v3, v2}, Lcom/facebook/AccessTokenSource;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_NATIVE:Lcom/facebook/AccessTokenSource;

    .line 42
    new-instance v0, Lcom/facebook/AccessTokenSource;

    const/4 v4, 0x3

    const-string v5, "FACEBOOK_APPLICATION_SERVICE"

    invoke-direct {v0, v5, v4, v2}, Lcom/facebook/AccessTokenSource;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_SERVICE:Lcom/facebook/AccessTokenSource;

    .line 47
    new-instance v0, Lcom/facebook/AccessTokenSource;

    const/4 v5, 0x4

    const-string v6, "WEB_VIEW"

    invoke-direct {v0, v6, v5, v1}, Lcom/facebook/AccessTokenSource;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/AccessTokenSource;->WEB_VIEW:Lcom/facebook/AccessTokenSource;

    .line 52
    new-instance v0, Lcom/facebook/AccessTokenSource;

    const/4 v6, 0x5

    const-string v7, "TEST_USER"

    invoke-direct {v0, v7, v6, v2}, Lcom/facebook/AccessTokenSource;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/AccessTokenSource;->TEST_USER:Lcom/facebook/AccessTokenSource;

    .line 56
    new-instance v0, Lcom/facebook/AccessTokenSource;

    const/4 v7, 0x6

    const-string v8, "CLIENT_TOKEN"

    invoke-direct {v0, v8, v7, v2}, Lcom/facebook/AccessTokenSource;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/AccessTokenSource;->CLIENT_TOKEN:Lcom/facebook/AccessTokenSource;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/facebook/AccessTokenSource;

    .line 22
    sget-object v9, Lcom/facebook/AccessTokenSource;->NONE:Lcom/facebook/AccessTokenSource;

    aput-object v9, v8, v1

    sget-object v1, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    aput-object v1, v8, v2

    sget-object v1, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_NATIVE:Lcom/facebook/AccessTokenSource;

    aput-object v1, v8, v3

    sget-object v1, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_SERVICE:Lcom/facebook/AccessTokenSource;

    aput-object v1, v8, v4

    sget-object v1, Lcom/facebook/AccessTokenSource;->WEB_VIEW:Lcom/facebook/AccessTokenSource;

    aput-object v1, v8, v5

    sget-object v1, Lcom/facebook/AccessTokenSource;->TEST_USER:Lcom/facebook/AccessTokenSource;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/facebook/AccessTokenSource;->$VALUES:[Lcom/facebook/AccessTokenSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput-boolean p3, p0, Lcom/facebook/AccessTokenSource;->canExtendToken:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/AccessTokenSource;
    .locals 1

    .line 22
    const-class v0, Lcom/facebook/AccessTokenSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/AccessTokenSource;

    return-object p0
.end method

.method public static values()[Lcom/facebook/AccessTokenSource;
    .locals 1

    .line 22
    sget-object v0, Lcom/facebook/AccessTokenSource;->$VALUES:[Lcom/facebook/AccessTokenSource;

    invoke-virtual {v0}, [Lcom/facebook/AccessTokenSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/AccessTokenSource;

    return-object v0
.end method


# virtual methods
.method canExtendToken()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/facebook/AccessTokenSource;->canExtendToken:Z

    return v0
.end method
