.class public final synthetic Lcom/google/firebase/crashlytics/internal/-$$Lambda$CrashlyticsNativeComponentDeferredProxy$Bbzn4T42cRyF4nhKt1XyCbcuXUw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/inject/Deferred$DeferredHandler;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/-$$Lambda$CrashlyticsNativeComponentDeferredProxy$Bbzn4T42cRyF4nhKt1XyCbcuXUw;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final handle(Lcom/google/firebase/inject/Provider;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/-$$Lambda$CrashlyticsNativeComponentDeferredProxy$Bbzn4T42cRyF4nhKt1XyCbcuXUw;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponentDeferredProxy;->lambda$finalizeSession$2(Ljava/lang/String;Lcom/google/firebase/inject/Provider;)V

    return-void
.end method
