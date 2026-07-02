.class public Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest$AcquisitionRequest;
.super Ljava/lang/Object;
.source "BifrostAcquisitionRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AcquisitionRequest"
.end annotation


# instance fields
.field private final csrf:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/amazon/bookwizard/bifrost/BifrostAcquisitionRequest$AcquisitionRequest;->csrf:Ljava/lang/String;

    return-void
.end method
