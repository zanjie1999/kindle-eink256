.class public final Lcom/amazon/kindle/services/authentication/AccountHoldersKt;
.super Ljava/lang/Object;
.source "AccountHolders.kt"


# static fields
.field private static final TAG:Ljava/lang/String; = "MAPAccountHolder"


# direct methods
.method public static final fetchToken(Lcom/amazon/kindle/services/authentication/ITokenCache;Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$fetchToken"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 157
    invoke-interface {p0, p1, p2, v0, v0}, Lcom/amazon/kindle/services/authentication/ITokenCache;->getValue(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    const-string p1, "this.getValue(key, accountId, false, false)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getToken(Lcom/amazon/kindle/services/authentication/ITokenCache;Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "$this$getToken"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 164
    invoke-interface {p0, p1, p2, v0, v1}, Lcom/amazon/kindle/services/authentication/ITokenCache;->getValue(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    const-string p1, "this.getValue(key, accountId, true, false)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
