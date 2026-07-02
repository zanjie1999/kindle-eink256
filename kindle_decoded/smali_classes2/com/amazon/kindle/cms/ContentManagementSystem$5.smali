.class Lcom/amazon/kindle/cms/ContentManagementSystem$5;
.super Ljava/lang/Object;
.source "ContentManagementSystem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/cms/ContentManagementSystem;->connectAfterDelay(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/cms/ContentManagementSystem;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$5;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$5;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    invoke-virtual {v0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->connect()V

    return-void
.end method
