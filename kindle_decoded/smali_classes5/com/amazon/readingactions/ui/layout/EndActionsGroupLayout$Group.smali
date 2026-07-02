.class public final Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Group;
.super Ljava/lang/Object;
.source "EndActionsGroupLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Group"
.end annotation


# instance fields
.field private final fullWidth:Z

.field private final title:Ljava/lang/String;

.field private final widgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/ea/ui/widget/WidgetController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/ea/ui/widget/WidgetController;",
            ">;Z)V"
        }
    .end annotation

    const-string/jumbo v0, "widgets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Group;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Group;->widgets:Ljava/util/List;

    iput-boolean p3, p0, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Group;->fullWidth:Z

    return-void
.end method


# virtual methods
.method public final getFullWidth()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Group;->fullWidth:Z

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Group;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidgets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/ea/ui/widget/WidgetController;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Group;->widgets:Ljava/util/List;

    return-object v0
.end method
