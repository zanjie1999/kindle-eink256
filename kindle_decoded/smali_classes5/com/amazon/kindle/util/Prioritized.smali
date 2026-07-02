.class public final Lcom/amazon/kindle/util/Prioritized;
.super Ljava/lang/Object;
.source "ThreadDecorators.kt"

# interfaces
.implements Lcom/amazon/kindle/util/IThreadDecorator;


# instance fields
.field private final priority:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amazon/kindle/util/Prioritized;->priority:I

    return-void
.end method


# virtual methods
.method public decorate(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 1

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget v0, p0, Lcom/amazon/kindle/util/Prioritized;->priority:I

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    return-object p1
.end method
