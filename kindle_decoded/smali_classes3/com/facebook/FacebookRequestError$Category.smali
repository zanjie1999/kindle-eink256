.class public final enum Lcom/facebook/FacebookRequestError$Category;
.super Ljava/lang/Enum;
.source "FacebookRequestError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/FacebookRequestError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/FacebookRequestError$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/FacebookRequestError$Category;

.field public static final enum AUTHENTICATION_REOPEN_SESSION:Lcom/facebook/FacebookRequestError$Category;

.field public static final enum AUTHENTICATION_RETRY:Lcom/facebook/FacebookRequestError$Category;

.field public static final enum BAD_REQUEST:Lcom/facebook/FacebookRequestError$Category;

.field public static final enum CLIENT:Lcom/facebook/FacebookRequestError$Category;

.field public static final enum OTHER:Lcom/facebook/FacebookRequestError$Category;

.field public static final enum PERMISSION:Lcom/facebook/FacebookRequestError$Category;

.field public static final enum SERVER:Lcom/facebook/FacebookRequestError$Category;

.field public static final enum THROTTLING:Lcom/facebook/FacebookRequestError$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 464
    new-instance v0, Lcom/facebook/FacebookRequestError$Category;

    const/4 v1, 0x0

    const-string v2, "AUTHENTICATION_RETRY"

    invoke-direct {v0, v2, v1}, Lcom/facebook/FacebookRequestError$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/FacebookRequestError$Category;->AUTHENTICATION_RETRY:Lcom/facebook/FacebookRequestError$Category;

    .line 470
    new-instance v0, Lcom/facebook/FacebookRequestError$Category;

    const/4 v2, 0x1

    const-string v3, "AUTHENTICATION_REOPEN_SESSION"

    invoke-direct {v0, v3, v2}, Lcom/facebook/FacebookRequestError$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/FacebookRequestError$Category;->AUTHENTICATION_REOPEN_SESSION:Lcom/facebook/FacebookRequestError$Category;

    .line 473
    new-instance v0, Lcom/facebook/FacebookRequestError$Category;

    const/4 v3, 0x2

    const-string v4, "PERMISSION"

    invoke-direct {v0, v4, v3}, Lcom/facebook/FacebookRequestError$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/FacebookRequestError$Category;->PERMISSION:Lcom/facebook/FacebookRequestError$Category;

    .line 479
    new-instance v0, Lcom/facebook/FacebookRequestError$Category;

    const/4 v4, 0x3

    const-string v5, "SERVER"

    invoke-direct {v0, v5, v4}, Lcom/facebook/FacebookRequestError$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/FacebookRequestError$Category;->SERVER:Lcom/facebook/FacebookRequestError$Category;

    .line 482
    new-instance v0, Lcom/facebook/FacebookRequestError$Category;

    const/4 v5, 0x4

    const-string v6, "THROTTLING"

    invoke-direct {v0, v6, v5}, Lcom/facebook/FacebookRequestError$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/FacebookRequestError$Category;->THROTTLING:Lcom/facebook/FacebookRequestError$Category;

    .line 488
    new-instance v0, Lcom/facebook/FacebookRequestError$Category;

    const/4 v6, 0x5

    const-string v7, "OTHER"

    invoke-direct {v0, v7, v6}, Lcom/facebook/FacebookRequestError$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/FacebookRequestError$Category;->OTHER:Lcom/facebook/FacebookRequestError$Category;

    .line 494
    new-instance v0, Lcom/facebook/FacebookRequestError$Category;

    const/4 v7, 0x6

    const-string v8, "BAD_REQUEST"

    invoke-direct {v0, v8, v7}, Lcom/facebook/FacebookRequestError$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/FacebookRequestError$Category;->BAD_REQUEST:Lcom/facebook/FacebookRequestError$Category;

    .line 500
    new-instance v0, Lcom/facebook/FacebookRequestError$Category;

    const/4 v8, 0x7

    const-string v9, "CLIENT"

    invoke-direct {v0, v9, v8}, Lcom/facebook/FacebookRequestError$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/FacebookRequestError$Category;->CLIENT:Lcom/facebook/FacebookRequestError$Category;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/facebook/FacebookRequestError$Category;

    .line 459
    sget-object v10, Lcom/facebook/FacebookRequestError$Category;->AUTHENTICATION_RETRY:Lcom/facebook/FacebookRequestError$Category;

    aput-object v10, v9, v1

    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->AUTHENTICATION_REOPEN_SESSION:Lcom/facebook/FacebookRequestError$Category;

    aput-object v1, v9, v2

    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->PERMISSION:Lcom/facebook/FacebookRequestError$Category;

    aput-object v1, v9, v3

    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->SERVER:Lcom/facebook/FacebookRequestError$Category;

    aput-object v1, v9, v4

    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->THROTTLING:Lcom/facebook/FacebookRequestError$Category;

    aput-object v1, v9, v5

    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->OTHER:Lcom/facebook/FacebookRequestError$Category;

    aput-object v1, v9, v6

    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->BAD_REQUEST:Lcom/facebook/FacebookRequestError$Category;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/facebook/FacebookRequestError$Category;->$VALUES:[Lcom/facebook/FacebookRequestError$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 459
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/FacebookRequestError$Category;
    .locals 1

    .line 459
    const-class v0, Lcom/facebook/FacebookRequestError$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/FacebookRequestError$Category;

    return-object p0
.end method

.method public static values()[Lcom/facebook/FacebookRequestError$Category;
    .locals 1

    .line 459
    sget-object v0, Lcom/facebook/FacebookRequestError$Category;->$VALUES:[Lcom/facebook/FacebookRequestError$Category;

    invoke-virtual {v0}, [Lcom/facebook/FacebookRequestError$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/FacebookRequestError$Category;

    return-object v0
.end method
