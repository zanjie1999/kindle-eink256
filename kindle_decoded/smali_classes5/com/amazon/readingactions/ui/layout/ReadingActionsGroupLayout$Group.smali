.class Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout$Group;
.super Ljava/lang/Object;
.source "ReadingActionsGroupLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Group"
.end annotation


# instance fields
.field public final title:Ljava/lang/String;

.field public final widgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/startactions/ui/widget/Widget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/startactions/ui/widget/Widget;",
            ">;)V"
        }
    .end annotation

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p1, p0, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout$Group;->title:Ljava/lang/String;

    .line 299
    iput-object p2, p0, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout$Group;->widgets:Ljava/util/List;

    return-void
.end method
