.class Lcom/amazon/startactions/ui/layout/GroupLayout$Group;
.super Ljava/lang/Object;
.source "GroupLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/ui/layout/GroupLayout;
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

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Lcom/amazon/startactions/ui/layout/GroupLayout$Group;->title:Ljava/lang/String;

    .line 267
    iput-object p2, p0, Lcom/amazon/startactions/ui/layout/GroupLayout$Group;->widgets:Ljava/util/List;

    return-void
.end method
