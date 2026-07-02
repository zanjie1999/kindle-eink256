.class public final enum Lcom/amazon/sitb/android/StoreCookie;
.super Ljava/lang/Enum;
.source "StoreCookie.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/sitb/android/StoreCookie;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/sitb/android/StoreCookie;

.field public static final enum SESSION_ID:Lcom/amazon/sitb/android/StoreCookie;

.field public static final enum X_ACCESS_TOKEN:Lcom/amazon/sitb/android/StoreCookie;

.field public static final enum X_MAIN_OR_X_ACB:Lcom/amazon/sitb/android/StoreCookie;


# instance fields
.field private final name:Ljava/lang/String;

.field private final secure:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 9
    new-instance v0, Lcom/amazon/sitb/android/StoreCookie;

    const/4 v1, 0x0

    const-string v2, "X_ACCESS_TOKEN"

    const-string/jumbo v3, "x-access-token"

    invoke-direct {v0, v2, v1, v3, v1}, Lcom/amazon/sitb/android/StoreCookie;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/sitb/android/StoreCookie;->X_ACCESS_TOKEN:Lcom/amazon/sitb/android/StoreCookie;

    .line 14
    new-instance v0, Lcom/amazon/sitb/android/StoreCookie;

    const/4 v2, 0x1

    const-string v3, "X_MAIN_OR_X_ACB"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/amazon/sitb/android/StoreCookie;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/sitb/android/StoreCookie;->X_MAIN_OR_X_ACB:Lcom/amazon/sitb/android/StoreCookie;

    .line 19
    new-instance v0, Lcom/amazon/sitb/android/StoreCookie;

    const/4 v3, 0x2

    const-string v4, "SESSION_ID"

    const-string/jumbo v5, "session-id"

    invoke-direct {v0, v4, v3, v5, v1}, Lcom/amazon/sitb/android/StoreCookie;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/sitb/android/StoreCookie;->SESSION_ID:Lcom/amazon/sitb/android/StoreCookie;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/sitb/android/StoreCookie;

    .line 7
    sget-object v5, Lcom/amazon/sitb/android/StoreCookie;->X_ACCESS_TOKEN:Lcom/amazon/sitb/android/StoreCookie;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/sitb/android/StoreCookie;->X_MAIN_OR_X_ACB:Lcom/amazon/sitb/android/StoreCookie;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/sitb/android/StoreCookie;->$VALUES:[Lcom/amazon/sitb/android/StoreCookie;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/amazon/sitb/android/StoreCookie;->name:Ljava/lang/String;

    .line 27
    iput-boolean p4, p0, Lcom/amazon/sitb/android/StoreCookie;->secure:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/sitb/android/StoreCookie;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/sitb/android/StoreCookie;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/sitb/android/StoreCookie;

    return-object p0
.end method

.method public static values()[Lcom/amazon/sitb/android/StoreCookie;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/sitb/android/StoreCookie;->$VALUES:[Lcom/amazon/sitb/android/StoreCookie;

    invoke-virtual {v0}, [Lcom/amazon/sitb/android/StoreCookie;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/sitb/android/StoreCookie;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/sitb/android/StoreCookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isSecure()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/amazon/sitb/android/StoreCookie;->secure:Z

    return v0
.end method
