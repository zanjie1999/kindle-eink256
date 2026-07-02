.class public final Lcom/amazon/identity/auth/device/a;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/amazon/identity/auth/device/a;->a:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/amazon/identity/auth/device/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/identity/auth/device/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/identity/auth/device/a;->a:Ljava/lang/String;

    return-object v0
.end method
