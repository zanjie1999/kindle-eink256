.class public Lcom/amazon/krf/internal/KRFResourceProviderImpl;
.super Ljava/lang/Object;
.source "KRFResourceProviderImpl.java"

# interfaces
.implements Lcom/amazon/krf/platform/KRFResourceProvider;


# instance fields
.field private nativeRef:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/amazon/krf/internal/KRFResourceProviderImpl;->nativeRef:J

    return-void
.end method


# virtual methods
.method public native createResourceStream(Ljava/lang/String;)Lcom/amazon/krf/platform/KRFResourceStream;
.end method
