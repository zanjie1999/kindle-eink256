.class Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;
.super Ljava/lang/Object;
.source "TutorialMappings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/info/TutorialMappings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MappingBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder$NoOverflowLayoutBuilder;
    }
.end annotation


# instance fields
.field final mapping:Lcom/amazon/kcp/info/TutorialMappings$Mapping;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/info/TutorialMappings;Lcom/amazon/kcp/info/TutorialManager$JITTutorial;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/amazon/kcp/info/TutorialMappings$Mapping;

    invoke-direct {v0}, Lcom/amazon/kcp/info/TutorialMappings$Mapping;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;->mapping:Lcom/amazon/kcp/info/TutorialMappings$Mapping;

    .line 66
    iget-object p1, p1, Lcom/amazon/kcp/info/TutorialMappings;->mappings:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method withLayout(I)Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;->mapping:Lcom/amazon/kcp/info/TutorialMappings$Mapping;

    new-instance v1, Lcom/amazon/kcp/info/TutorialMappings$SimpleLayoutMapping;

    invoke-direct {v1, p1}, Lcom/amazon/kcp/info/TutorialMappings$SimpleLayoutMapping;-><init>(I)V

    iput-object v1, v0, Lcom/amazon/kcp/info/TutorialMappings$Mapping;->layoutMapping:Lcom/amazon/kcp/info/TutorialMappings$LayoutMapping;

    return-object p0
.end method

.method withOverflowLayout(I)Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder$NoOverflowLayoutBuilder;
    .locals 1

    .line 80
    new-instance v0, Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder$NoOverflowLayoutBuilder;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder$NoOverflowLayoutBuilder;-><init>(Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;I)V

    return-object v0
.end method

.method withVersionId(I)Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/kcp/info/TutorialMappings$MappingBuilder;->mapping:Lcom/amazon/kcp/info/TutorialMappings$Mapping;

    iput p1, v0, Lcom/amazon/kcp/info/TutorialMappings$Mapping;->versionResId:I

    return-object p0
.end method
