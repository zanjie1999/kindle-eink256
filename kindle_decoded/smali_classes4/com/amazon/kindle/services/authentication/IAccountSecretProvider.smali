.class public interface abstract Lcom/amazon/kindle/services/authentication/IAccountSecretProvider;
.super Ljava/lang/Object;
.source "IAccountSecretProvider.java"


# static fields
.field public static final SECURE_STORAGE_ACCOUNT_SECRET_KEY:Ljava/lang/String; = "kindle.account.tokens"


# virtual methods
.method public abstract addSecretsFromTodo(Ljava/lang/String;)V
.end method

.method public abstract clearSecrets()V
.end method

.method public abstract getAccountSecrets()Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
