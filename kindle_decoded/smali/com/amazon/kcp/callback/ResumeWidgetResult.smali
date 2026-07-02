.class public Lcom/amazon/kcp/callback/ResumeWidgetResult;
.super Ljava/lang/Object;
.source "ResumeWidgetResult.java"


# instance fields
.field private final contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

.field private final isDelete:Z


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/content/ContentMetadata;Z)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amazon/kcp/callback/ResumeWidgetResult;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    .line 18
    iput-boolean p2, p0, Lcom/amazon/kcp/callback/ResumeWidgetResult;->isDelete:Z

    return-void
.end method


# virtual methods
.method public getIsDelete()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/amazon/kcp/callback/ResumeWidgetResult;->isDelete:Z

    return v0
.end method
