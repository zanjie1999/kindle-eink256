.class public Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenStateTransitioner;
.super Ljava/lang/Object;
.source "BaseBookOpenStateTransitioner.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateTransitioner;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseBookOpenStateTransitioner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseBookOpenStateTransitioner.kt\ncom/amazon/kindle/krx/content/bookopen/BaseBookOpenStateTransitioner\n*L\n1#1,32:1\n*E\n"
.end annotation


# instance fields
.field private final additionalMetrics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private final additionalValidation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateValidation;",
            ">;"
        }
    .end annotation
.end field

.field private final state:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenStateTransitioner;->state:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenStateTransitioner;->additionalMetrics:Ljava/util/List;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenStateTransitioner;->additionalValidation:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addMetrics(Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;)V
    .locals 1

    const-string v0, "metrics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenStateTransitioner;->additionalMetrics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addValidation(Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateValidation;)V
    .locals 1

    const-string v0, "validator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenStateTransitioner;->additionalValidation:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getMetrics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenStateTransitioner;->additionalMetrics:Ljava/util/List;

    return-object v0
.end method

.method public getState()Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenStateTransitioner;->state:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    return-object v0
.end method

.method public getValidation()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateValidation;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenStateTransitioner;->additionalValidation:Ljava/util/List;

    return-object v0
.end method
