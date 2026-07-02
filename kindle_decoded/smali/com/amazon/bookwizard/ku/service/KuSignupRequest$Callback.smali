.class public interface abstract Lcom/amazon/bookwizard/ku/service/KuSignupRequest$Callback;
.super Ljava/lang/Object;
.source "KuSignupRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/ku/service/KuSignupRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onError(Lcom/android/volley/VolleyError;)V
.end method

.method public abstract onSuccess(Lcom/amazon/bookwizard/ku/service/KuSignupRequest$KuSignupResponse;)V
.end method
