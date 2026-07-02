.class public final enum Lcom/facebook/SessionLoginBehavior;
.super Ljava/lang/Enum;
.source "SessionLoginBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/SessionLoginBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/SessionLoginBehavior;

.field public static final enum SSO_ONLY:Lcom/facebook/SessionLoginBehavior;

.field public static final enum SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

.field public static final enum SUPPRESS_SSO:Lcom/facebook/SessionLoginBehavior;


# instance fields
.field private final allowsKatanaAuth:Z

.field private final allowsWebViewAuth:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 31
    new-instance v0, Lcom/facebook/SessionLoginBehavior;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "SSO_WITH_FALLBACK"

    invoke-direct {v0, v3, v1, v2, v2}, Lcom/facebook/SessionLoginBehavior;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    .line 37
    new-instance v0, Lcom/facebook/SessionLoginBehavior;

    const-string v3, "SSO_ONLY"

    invoke-direct {v0, v3, v2, v2, v1}, Lcom/facebook/SessionLoginBehavior;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/facebook/SessionLoginBehavior;->SSO_ONLY:Lcom/facebook/SessionLoginBehavior;

    .line 42
    new-instance v0, Lcom/facebook/SessionLoginBehavior;

    const/4 v3, 0x2

    const-string v4, "SUPPRESS_SSO"

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/facebook/SessionLoginBehavior;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/facebook/SessionLoginBehavior;->SUPPRESS_SSO:Lcom/facebook/SessionLoginBehavior;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/facebook/SessionLoginBehavior;

    .line 26
    sget-object v5, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    aput-object v5, v4, v1

    sget-object v1, Lcom/facebook/SessionLoginBehavior;->SSO_ONLY:Lcom/facebook/SessionLoginBehavior;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/facebook/SessionLoginBehavior;->$VALUES:[Lcom/facebook/SessionLoginBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-boolean p3, p0, Lcom/facebook/SessionLoginBehavior;->allowsKatanaAuth:Z

    .line 49
    iput-boolean p4, p0, Lcom/facebook/SessionLoginBehavior;->allowsWebViewAuth:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/SessionLoginBehavior;
    .locals 1

    .line 26
    const-class v0, Lcom/facebook/SessionLoginBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/SessionLoginBehavior;

    return-object p0
.end method

.method public static values()[Lcom/facebook/SessionLoginBehavior;
    .locals 1

    .line 26
    sget-object v0, Lcom/facebook/SessionLoginBehavior;->$VALUES:[Lcom/facebook/SessionLoginBehavior;

    invoke-virtual {v0}, [Lcom/facebook/SessionLoginBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/SessionLoginBehavior;

    return-object v0
.end method


# virtual methods
.method allowsKatanaAuth()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/facebook/SessionLoginBehavior;->allowsKatanaAuth:Z

    return v0
.end method

.method allowsWebViewAuth()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/facebook/SessionLoginBehavior;->allowsWebViewAuth:Z

    return v0
.end method
