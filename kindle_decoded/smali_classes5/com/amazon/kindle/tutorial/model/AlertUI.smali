.class public Lcom/amazon/kindle/tutorial/model/AlertUI;
.super Ljava/lang/Object;
.source "AlertUI.kt"

# interfaces
.implements Lcom/amazon/kindle/tutorial/UserInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/tutorial/model/AlertUI$Factory;
    }
.end annotation


# static fields
.field public static final Factory:Lcom/amazon/kindle/tutorial/model/AlertUI$Factory;


# instance fields
.field private final messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/tutorial/model/AlertUI$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/tutorial/model/AlertUI$Factory;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/tutorial/model/AlertUI;->Factory:Lcom/amazon/kindle/tutorial/model/AlertUI$Factory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "messages"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/tutorial/model/AlertUI;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kindle/tutorial/model/AlertUI;->messages:Ljava/util/List;

    return-void
.end method

.method public static final fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/AlertUI;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/tutorial/model/AlertUI;->Factory:Lcom/amazon/kindle/tutorial/model/AlertUI$Factory;

    invoke-virtual {v0, p0}, Lcom/amazon/kindle/tutorial/model/AlertUI$Factory;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/AlertUI;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/AlertUI;->messages:Ljava/util/List;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/AlertUI;->title:Ljava/lang/String;

    return-object v0
.end method
