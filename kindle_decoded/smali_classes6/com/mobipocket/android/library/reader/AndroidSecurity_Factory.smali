.class public final Lcom/mobipocket/android/library/reader/AndroidSecurity_Factory;
.super Ljava/lang/Object;
.source "AndroidSecurity_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/mobipocket/android/library/reader/AndroidSecurity;",
        ">;"
    }
.end annotation


# instance fields
.field private final accountSecretProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/mobipocket/android/library/reader/AndroidSecurity_Factory;->accountSecretProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/mobipocket/android/library/reader/AndroidSecurity_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;",
            ">;)",
            "Lcom/mobipocket/android/library/reader/AndroidSecurity_Factory;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/mobipocket/android/library/reader/AndroidSecurity_Factory;

    invoke-direct {v0, p0}, Lcom/mobipocket/android/library/reader/AndroidSecurity_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/mobipocket/android/library/reader/AndroidSecurity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;",
            ">;)",
            "Lcom/mobipocket/android/library/reader/AndroidSecurity;"
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/mobipocket/android/library/reader/AndroidSecurity;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;

    invoke-direct {v0, p0}, Lcom/mobipocket/android/library/reader/AndroidSecurity;-><init>(Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/mobipocket/android/library/reader/AndroidSecurity;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/mobipocket/android/library/reader/AndroidSecurity_Factory;->accountSecretProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/mobipocket/android/library/reader/AndroidSecurity_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/mobipocket/android/library/reader/AndroidSecurity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/mobipocket/android/library/reader/AndroidSecurity_Factory;->get()Lcom/mobipocket/android/library/reader/AndroidSecurity;

    move-result-object v0

    return-object v0
.end method
