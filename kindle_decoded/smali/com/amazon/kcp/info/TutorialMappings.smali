.class abstract Lcom/amazon/kcp/info/TutorialMappings;
.super Ljava/lang/Object;
.source "TutorialMappings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/info/TutorialMappings$OverflowLayoutMapping;,
        Lcom/amazon/kcp/info/TutorialMappings$SimpleLayoutMapping;,
        Lcom/amazon/kcp/info/TutorialMappings$LayoutMapping;,
        Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;,
        Lcom/amazon/kcp/info/TutorialMappings$Mapping;
    }
.end annotation


# instance fields
.field mappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/info/TutorialManager$JITTutorial;",
            "Lcom/amazon/kcp/info/TutorialMappings$Mapping;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-class v0, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    invoke-static {v0}, Lcom/google/common/collect/Maps;->newEnumMap(Ljava/lang/Class;)Ljava/util/EnumMap;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/info/TutorialMappings;->mappings:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method getTutorialVersionId(Lcom/amazon/kcp/info/TutorialManager$JITTutorial;)Ljava/lang/Integer;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/info/TutorialMappings;->mappings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/info/TutorialMappings$Mapping;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 41
    :cond_0
    iget p1, p1, Lcom/amazon/kcp/info/TutorialMappings$Mapping;->versionResId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method mapping(Lcom/amazon/kcp/info/TutorialManager$JITTutorial;)Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;
    .locals 1

    .line 28
    new-instance v0, Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;-><init>(Lcom/amazon/kcp/info/TutorialMappings;Lcom/amazon/kcp/info/TutorialManager$JITTutorial;)V

    return-object v0
.end method
