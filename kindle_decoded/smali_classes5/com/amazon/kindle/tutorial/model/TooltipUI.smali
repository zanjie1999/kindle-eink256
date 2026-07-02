.class public Lcom/amazon/kindle/tutorial/model/TooltipUI;
.super Ljava/lang/Object;
.source "TooltipUI.kt"

# interfaces
.implements Lcom/amazon/kindle/tutorial/UserInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/tutorial/model/TooltipUI$Factory;
    }
.end annotation


# static fields
.field public static final Factory:Lcom/amazon/kindle/tutorial/model/TooltipUI$Factory;


# instance fields
.field private final doneButton:Ljava/lang/String;

.field private final nextButton:Ljava/lang/String;

.field private final pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;",
            ">;"
        }
    .end annotation
.end field

.field private final settings:Lcom/amazon/kindle/tutorial/model/TooltipSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/tutorial/model/TooltipUI$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/tutorial/model/TooltipUI$Factory;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/tutorial/model/TooltipUI;->Factory:Lcom/amazon/kindle/tutorial/model/TooltipUI$Factory;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/amazon/kindle/tutorial/model/TooltipSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;",
            ">;",
            "Lcom/amazon/kindle/tutorial/model/TooltipSettings;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "pages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "settings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/tutorial/model/TooltipUI;->pages:Ljava/util/List;

    iput-object p2, p0, Lcom/amazon/kindle/tutorial/model/TooltipUI;->settings:Lcom/amazon/kindle/tutorial/model/TooltipSettings;

    iput-object p3, p0, Lcom/amazon/kindle/tutorial/model/TooltipUI;->nextButton:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/tutorial/model/TooltipUI;->doneButton:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDoneButton()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TooltipUI;->doneButton:Ljava/lang/String;

    return-object v0
.end method

.method public final getNextButton()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TooltipUI;->nextButton:Ljava/lang/String;

    return-object v0
.end method

.method public final getPages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TooltipUI;->pages:Ljava/util/List;

    return-object v0
.end method

.method public final getSettings()Lcom/amazon/kindle/tutorial/model/TooltipSettings;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TooltipUI;->settings:Lcom/amazon/kindle/tutorial/model/TooltipSettings;

    return-object v0
.end method
