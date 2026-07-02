.class public Lcom/amazon/kindle/observablemodel/ContentFilter$Builder;
.super Ljava/lang/Object;
.source "ContentFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/observablemodel/ContentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field final categories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final filters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/observablemodel/ContentFilter$Builder;->categories:Ljava/util/Set;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/observablemodel/ContentFilter$Builder;->filters:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/kindle/observablemodel/ContentFilter;
    .locals 3

    .line 73
    new-instance v0, Lcom/amazon/kindle/observablemodel/ContentFilter;

    iget-object v1, p0, Lcom/amazon/kindle/observablemodel/ContentFilter$Builder;->categories:Ljava/util/Set;

    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/ContentFilter$Builder;->filters:Ljava/util/Set;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/observablemodel/ContentFilter;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public category(I)Lcom/amazon/kindle/observablemodel/ContentFilter$Builder;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ContentFilter$Builder;->categories:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public filter(I)Lcom/amazon/kindle/observablemodel/ContentFilter$Builder;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ContentFilter$Builder;->filters:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
