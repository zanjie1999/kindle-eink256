.class public final Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Companion;
.super Ljava/lang/Object;
.source "NotebookActionMetric.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/notebook/module/metrics/NotebookActionMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Companion;

    invoke-direct {v0}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Companion;-><init>()V

    sput-object v0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Companion;->$$INSTANCE:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
