.class public abstract Lcom/amazon/ksdk/oauth/TokenManager;
.super Ljava/lang/Object;
.source "TokenManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ksdk/oauth/TokenManager$CppProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lcom/amazon/ksdk/oauth/TokenManager;
    .locals 1

    .line 15
    invoke-static {}, Lcom/amazon/ksdk/oauth/TokenManager$CppProxy;->instance()Lcom/amazon/ksdk/oauth/TokenManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract setProvider(Lcom/amazon/ksdk/oauth/TokenProvider;)V
.end method
