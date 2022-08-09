# Macros file for GiD v1.0

# Created by GiD version 15.0.2

#[_ "'Zoom Frame"]
set {macrosdata(Zoom Frame,Description)} {'Zoom Frame}
set {macrosdata(Zoom Frame,CreationDate)} {2022-08-08 19:44:43}
set {macrosdata(Zoom Frame,IsStandard)} 0
set {macrosdata(Zoom Frame,Active)} 1
set {macrosdata(Zoom Frame,Group)} View
set {macrosdata(Zoom Frame,Accelerators)} {}
set {macrosdata(Zoom Frame,PrePost)} prepost
set {macrosdata(Zoom Frame,ModificationDate)} {2022-08-08 19:45:46}
set {macrosdata(Zoom Frame,InToolbar)} 1
set {macrosdata(Zoom Frame,Number)} 1
set {macrosdata(Zoom Frame,Icon)} {boundaries.png imported_images boundaries.png themed_image}

proc {Zoom Frame} {} {
    GiD_Process 'Zoom Frame
}

#[_ "Scale AllTypes by 0.001 in all dimensions. Center in 0 0 0"]
set {macrosdata(Scale by 0.001,CreationDate)} {2022-08-08 17:13:22}
set {macrosdata(Scale by 0.001,PrePost)} pre
set {macrosdata(Scale by 0.001,InToolbar)} 1
set {macrosdata(Scale by 0.001,Description)} {Scale AllTypes by 0.001 in all dimensions. Center in 0 0 0}
set {macrosdata(Scale by 0.001,Accelerators)} {}
set {macrosdata(Scale by 0.001,Active)} 1
set {macrosdata(Scale by 0.001,IsStandard)} 0
set {macrosdata(Scale by 0.001,Icon)} {zoomout.png imported_images zoomout.png themed_image}
set {macrosdata(Scale by 0.001,Group)} {Geometry Edit}
set {macrosdata(Scale by 0.001,ModificationDate)} {2022-08-08 17:18:26}
set {macrosdata(Scale by 0.001,Number)} 2

proc {Scale by 0.001} {} {
    GiD_Process Mescape Utilities Move AllTypes MaintainLayers Scale FNoJoin 0.0,0.0,0.0 FNoJoin 0.001,0.001,0.001
}

#[_ "Distance between two points"]
set macrosdata(Distance,InToolbar) 1
set macrosdata(Distance,Group) {}
set macrosdata(Distance,PrePost) prepost
set macrosdata(Distance,Icon) {dimension_dist.png imported_images dimension_dist.png themed_image}
set macrosdata(Distance,Number) 3
set macrosdata(Distance,IsStandard) 0
set macrosdata(Distance,CreationDate) {2022-03-01 13:09:45}
set macrosdata(Distance,Accelerators) {}
set macrosdata(Distance,Active) 1
set macrosdata(Distance,Description) {Distance between two points}
set macrosdata(Distance,ModificationDate) {2022-03-01 13:10:33}

proc Distance {} {
    GiD_Process Mescape Utilities Dist
}

#[_ "Mescape Geometry Edit DivideLine Multiple Point FJoin"]
set macrosdata(Macro1,CreationDate) {2022-03-28 10:12:15}
set macrosdata(Macro1,Description) {Mescape Geometry Edit DivideLine Multiple Point FJoin}
set macrosdata(Macro1,Icon) {}
set macrosdata(Macro1,Number) 4
set macrosdata(Macro1,Accelerators) F4
set macrosdata(Macro1,ModificationDate) {2022-08-08 17:18:33}
set macrosdata(Macro1,IsStandard) 0
set macrosdata(Macro1,Group) {}
set macrosdata(Macro1,InToolbar) 1
set macrosdata(Macro1,Active) 1
set macrosdata(Macro1,PrePost) pre

proc Macro1 {} {
    GiD_Process Mescape Geometry Edit DivideLine Multiple Point FJoin
}

#[_ "Open a simple editor to save small notes with the model"]
set macrosdata(Notes,Active) 1
set macrosdata(Notes,PrePost) prepost
set macrosdata(Notes,CreationDate) {2006-01-20 17:17:27}
set macrosdata(Notes,Number) 5
set macrosdata(Notes,Accelerators) {}
set macrosdata(Notes,InToolbar) 1
set macrosdata(Notes,Description) {Open a simple editor to save small notes with the model}
set macrosdata(Notes,Group) Tools
set macrosdata(Notes,Icon) {note.png imported_images note.png themed_image}
set macrosdata(Notes,IsStandard) 1
set macrosdata(Notes,ModificationDate) {2011-11-04 11:03:51}

proc Notes {} {
    OpenNotes
}

#[_ "Create arc by tangents (fillet curves)"]
set {macrosdata(Create arc by tangents,Number)} 6
set {macrosdata(Create arc by tangents,IsStandard)} 0
set {macrosdata(Create arc by tangents,Description)} {Create arc by tangents (fillet curves)}
set {macrosdata(Create arc by tangents,Icon)} {arc.png imported_images arc.png themed_image}
set {macrosdata(Create arc by tangents,Group)} {Geometry Edit}
set {macrosdata(Create arc by tangents,CreationDate)} {2022-02-28 21:24:54}
set {macrosdata(Create arc by tangents,InToolbar)} 1
set {macrosdata(Create arc by tangents,Active)} 1
set {macrosdata(Create arc by tangents,ModificationDate)} {2022-02-28 21:27:08}
set {macrosdata(Create arc by tangents,Accelerators)} {}
set {macrosdata(Create arc by tangents,PrePost)} pre

proc {Create arc by tangents} {} {
    GiD_Process Mescape Geometry Create Arc ByTangents
}

#[_ "Resize Graphical Window"]
set {macrosdata(Resize Graphical Window,Accelerators)} {}
set {macrosdata(Resize Graphical Window,Group)} View
set {macrosdata(Resize Graphical Window,InToolbar)} 0
set {macrosdata(Resize Graphical Window,Active)} 1
set {macrosdata(Resize Graphical Window,PrePost)} prepost
set {macrosdata(Resize Graphical Window,Description)} {Resize Graphical Window}
set {macrosdata(Resize Graphical Window,Icon)} {PantallaResize.png imported_images PantallaResize.png themed_image}
set {macrosdata(Resize Graphical Window,CreationDate)} {2010-02-12 13:01:02}
set {macrosdata(Resize Graphical Window,IsStandard)} 1
set {macrosdata(Resize Graphical Window,Number)} 7
set {macrosdata(Resize Graphical Window,ModificationDate)} {2021-12-29 14:16:49}

proc {Resize Graphical Window} {} {
    lassign [ GidUtils::GetMainDrawAreaSize ] grWidth grHeight
    set value [ tk_dialogEntryRAM .gid.wResize  [_ "get new size"]  [_ "Enter new size of the graphical window (format WIDTH or WIDTHxHEIGHT, for instance 500 or 800x600)"]  gidquestionhead word ${grWidth}x${grHeight} ]
    if { $value != "--CANCEL--"} {
        if { [regexp {([0-9]*)x([0-9]*)} $value trozo newWidth newHeight] } {
            if { $grWidth != $newWidth || $grHeight != $newHeight } {
                GidUtils::SetMainDrawAreaSize $newWidth $newHeight          
            }
        } elseif { [regexp {([0-9]*)} $value trozo newWidth] } {
            if { $grWidth != $newWidth } {
                set newHeight $grHeight 
                GidUtils::SetMainDrawAreaSize $newWidth $newHeight          
            }
        } else {
            WarnWin [_ "Can not read neither width nor height: %s" $value]
        }
    }
}

#[_ "Dimension angle beween three points"]
set {macrosdata(Dimension angle,CreationDate)} {2006-02-14 17:36:29}
set {macrosdata(Dimension angle,Description)} {Dimension angle beween three points}
set {macrosdata(Dimension angle,Number)} 8
set {macrosdata(Dimension angle,PrePost)} prepost
set {macrosdata(Dimension angle,InToolbar)} 1
set {macrosdata(Dimension angle,Accelerators)} {}
set {macrosdata(Dimension angle,Group)} Dimension
set {macrosdata(Dimension angle,Icon)} {dimension_angle.png imported_images dimension_angle.png themed_image}
set {macrosdata(Dimension angle,IsStandard)} 1
set {macrosdata(Dimension angle,Active)} 1
set {macrosdata(Dimension angle,ModificationDate)} {2021-12-29 14:16:53}

proc {Dimension angle} {} {
    GiD_Process escape escape escape escape Utilities Dimension Create Angle
}

#[_ "Dimension pointing to a vertex"]
set {macrosdata(Dimension vertex,Active)} 1
set {macrosdata(Dimension vertex,InToolbar)} 0
set {macrosdata(Dimension vertex,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(Dimension vertex,Icon)} {dimension_vertex.png imported_images dimension_vertex.png themed_image}
set {macrosdata(Dimension vertex,Number)} 9
set {macrosdata(Dimension vertex,Description)} {Dimension pointing to a vertex}
set {macrosdata(Dimension vertex,IsStandard)} 1
set {macrosdata(Dimension vertex,PrePost)} prepost
set {macrosdata(Dimension vertex,CreationDate)} {2006-02-14 17:51:53}
set {macrosdata(Dimension vertex,Group)} Dimension
set {macrosdata(Dimension vertex,Accelerators)} {}

proc {Dimension vertex} {} {
    GiD_Process MEscape Utilities Dimension Create Vertex
}

#[_ "Dimension pointing to an arc center"]
set {macrosdata(Dimension arc,Number)} 10
set {macrosdata(Dimension arc,IsStandard)} 1
set {macrosdata(Dimension arc,CreationDate)} {2006-02-14 21:00:15}
set {macrosdata(Dimension arc,InToolbar)} 1
set {macrosdata(Dimension arc,Accelerators)} {}
set {macrosdata(Dimension arc,Description)} {Dimension pointing to an arc center}
set {macrosdata(Dimension arc,PrePost)} prepost
set {macrosdata(Dimension arc,Active)} 1
set {macrosdata(Dimension arc,Group)} Dimension
set {macrosdata(Dimension arc,ModificationDate)} {2021-12-29 14:17:06}
set {macrosdata(Dimension arc,Icon)} {dimension_arc.png imported_images dimension_arc.png themed_image}

proc {Dimension arc} {} {
    GiD_Process MEscape Utilities Dimension Create Arc
}

#[_ "Modify the dimension text"]
set {macrosdata(Dimension edit,InToolbar)} 0
set {macrosdata(Dimension edit,Accelerators)} {}
set {macrosdata(Dimension edit,Description)} {Modify the dimension text}
set {macrosdata(Dimension edit,PrePost)} prepost
set {macrosdata(Dimension edit,Active)} 1
set {macrosdata(Dimension edit,Group)} Dimension
set {macrosdata(Dimension edit,ModificationDate)} {2021-12-29 14:17:14}
set {macrosdata(Dimension edit,Icon)} {dimension_edit.png imported_images dimension_edit.png themed_image}
set {macrosdata(Dimension edit,Number)} 11
set {macrosdata(Dimension edit,IsStandard)} 1
set {macrosdata(Dimension edit,CreationDate)} {2004-11-18 21:53:33}

proc {Dimension edit} {} {
    GiD_Process MEscape Utilities Dimension Edit
}

#[_ "Delete a dimension"]
set {macrosdata(Dimension delete,Number)} 12
set {macrosdata(Dimension delete,Accelerators)} {}
set {macrosdata(Dimension delete,InToolbar)} 0
set {macrosdata(Dimension delete,Description)} {Delete a dimension}
set {macrosdata(Dimension delete,Group)} Dimension
set {macrosdata(Dimension delete,Icon)} {dimension_delete.png imported_images dimension_delete.png themed_image}
set {macrosdata(Dimension delete,IsStandard)} 1
set {macrosdata(Dimension delete,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(Dimension delete,Active)} 1
set {macrosdata(Dimension delete,PrePost)} prepost
set {macrosdata(Dimension delete,CreationDate)} {2004-11-18 21:53:33}

proc {Dimension delete} {} {
    GiD_Process MEscape Utilities Dimension Delete
}

#[_ "Separate element in layers by its material"]
set macrosdata(CreateLayersFromElementMaterials,Group) Layers
set macrosdata(CreateLayersFromElementMaterials,Number) 13
set macrosdata(CreateLayersFromElementMaterials,Description) {Separate element in layers by its material}
set macrosdata(CreateLayersFromElementMaterials,IsStandard) 1
set macrosdata(CreateLayersFromElementMaterials,ModificationDate) {2012-12-14 22:44:00}
set macrosdata(CreateLayersFromElementMaterials,CreationDate) {2012-12-14 22:39:32}
set macrosdata(CreateLayersFromElementMaterials,Active) 0
set macrosdata(CreateLayersFromElementMaterials,Icon) {sendto.png imported_images sendto.png themed_image}
set macrosdata(CreateLayersFromElementMaterials,Accelerators) {}
set macrosdata(CreateLayersFromElementMaterials,InToolbar) 0
set macrosdata(CreateLayersFromElementMaterials,PrePost) pre

proc CreateLayersFromElementMaterials {} {
    proc _CreateLayersFromElementMaterials { } {
        set used_materials [list]
        foreach mesh [GiD_Info mesh elements any -array] {
            lappend used_materials {*}[lsort -integer -unique [lindex $mesh 3]]        
        }
        set used_materials [lsort -integer -unique $used_materials]
        if { [llength $used_materials] } {
            MeshView            
            GidUtils::DisableGraphics
            set current_layers [GiD_Info Layers]
            foreach material_id $used_materials {
                set layer_name Mat_$material_id
                if { [lsearch $current_layers $layer_name] == -1 } {
                    GiD_Process 'Layer New $layer_name escape
                }
                set element_ids [list]
                foreach mesh [GiD_Info mesh elements any -array] {
                    foreach element_id [lindex $mesh 1] element_material [lindex $mesh 3] {
                        if { $material_id == $element_material } {
                            lappend element_ids $element_id
                        }
                    }                
                }
                GiD_Process 'Layer Entities $layer_name Elements {*}$element_ids escape
            } 
            GidUtils::EnableGraphics
        }
        Layers::FillInfo
        GiD_Redraw
    }
    
    _CreateLayersFromElementMaterials
}

#[_ "Separate each top geometric figure in a different layer"]
set macrosdata(SeparateTopGeometryInLayers,InToolbar) 0
set macrosdata(SeparateTopGeometryInLayers,Active) 1
set macrosdata(SeparateTopGeometryInLayers,PrePost) pre
set macrosdata(SeparateTopGeometryInLayers,CreationDate) {2017-02-27 15:50:00}
set macrosdata(SeparateTopGeometryInLayers,Description) {Separate each top geometric figure in a different layer}
set macrosdata(SeparateTopGeometryInLayers,Icon) {sendto.png imported_images sendto.png themed_image}
set macrosdata(SeparateTopGeometryInLayers,Number) 14
set macrosdata(SeparateTopGeometryInLayers,Accelerators) {}
set macrosdata(SeparateTopGeometryInLayers,ModificationDate) {2021-12-29 14:17:52}
set macrosdata(SeparateTopGeometryInLayers,IsStandard) 1
set macrosdata(SeparateTopGeometryInLayers,Group) Layers

proc SeparateTopGeometryInLayers {} {
    proc _SeparateTopGeometryInLayers { } {
        GidUtils::DisableGraphics
        set initial_layers [lsort -dictionary [GiD_Info Layers]]
        foreach entity_type {point line surface volume} {
            set prefix [string toupper [string index ${entity_type} 0]]_
            foreach entity_id [GiD_Geometry list -higherentity 0 $entity_type 1:end] {
                set layer_name ${prefix}${entity_id}
                if { [lsearch -sorted -dictionary $initial_layers $layer_name] == -1 } {
                    GiD_Process 'Layer New $layer_name escape
                } else {
                    GiD_Process 'Layer ToUse $layer_name escape
                }
                GiD_Process 'Layer Entities $layer_name LowerEntities ${entity_type}s $entity_id escape
            } 
        }
        foreach layer_name $initial_layers {
            if { [lindex [GiD_Info Layers -canbedeleted $layer_name] 0] == 1 } {
                GiD_Process 'Layers Delete $layer_name escape
            }
        }
        GidUtils::EnableGraphics
        if { [llength [GiD_Info Layers]] != [llength $initial_layers] } {
            Layers::FillInfo
            GiD_Redraw    
        }
    }
     _SeparateTopGeometryInLayers
}

#[_ "Import a selection of multiple IGES files and send then to layers named with file names."]
set macrosdata(IgesFilesToLayers,IsStandard) 1
set macrosdata(IgesFilesToLayers,Active) 1
set macrosdata(IgesFilesToLayers,CreationDate) {2013-01-23 12:17:04}
set macrosdata(IgesFilesToLayers,Group) {Geometry Creation}
set macrosdata(IgesFilesToLayers,Accelerators) {}
set macrosdata(IgesFilesToLayers,Number) 15
set macrosdata(IgesFilesToLayers,ModificationDate) {2021-12-29 14:17:43}
set macrosdata(IgesFilesToLayers,Description) {Import a selection of multiple IGES files and send then to layers named with file names.}
set macrosdata(IgesFilesToLayers,PrePost) pre
set macrosdata(IgesFilesToLayers,InToolbar) 0
set macrosdata(IgesFilesToLayers,Icon) {folder.png imported_images folder.png themed_image}

proc IgesFilesToLayers {} {
    proc _IgesFilesToLayers { } {
        set multiple 1
        set filenames [MessageBoxGetFilename file read [_ "Read IGES files"]  {} {{{IGES} {.igs }} {{All files} {.*}}} {} $multiple  ""]
        if { $filenames != "" } {
            GidUtils::WaitState
            GidUtils::DisableGraphics
            set old_value_IGES_CreateAllInLayerToUse [GiD_Set IGES(CreateAllInLayerToUse)]
            GiD_Set IGES(CreateAllInLayerToUse) 1
            set auto_collapse [GiD_Set AutoCollapseAfterImport]
            if { $auto_collapse } {
                GiD_Set AutoCollapseAfterImport 0 ;#temporary disable it to do the collapse only once
                set old_value_CollapseIgnoringLayers [GiD_Set CollapseIgnoringLayers]
                GiD_Set CollapseIgnoringLayers 0 ;#to not join entities of different files
            }
            foreach filename $filenames {
                set layername [file tail $filename]
                if { [lsearch [GiD_Info layers] $layername] == -1 } {
                    GiD_Process 'Layers New $layername
                } else {
                    GiD_Process 'Layers ToUse $layername
                }
                GiD_Process Mescape Files IgesRead $filename
            }
            GiD_Process 'Layers Delete Layer0 ;#delete this layer if empty
            if { $auto_collapse } {
                GiD_Process Mescape Utilities Collapse Model Yes
                GiD_Set CollapseIgnoringLayers $old_value_CollapseIgnoringLayers
            }
            GiD_Set IGES(CreateAllInLayerToUse) $old_value_IGES_CreateAllInLayerToUse
            GidUtils::EnableGraphics
            GidUtils::EndWaitState
            Layers::FillInfo
            GiD_Process 'Zoom Frame
            GidUtils::SetWarnLine [_ "Read %s files" [llength $filenames]]
        }
        return 0
    }
    
    _IgesFilesToLayers
}

#[_ "Import a selection of multiple Wavefront Object files and send then to the current working layer."]
set macrosdata(MultipleWavefrontObjectsToCurrentLayer,Group) {Mesh Creation}
set macrosdata(MultipleWavefrontObjectsToCurrentLayer,Active) 1
set macrosdata(MultipleWavefrontObjectsToCurrentLayer,CreationDate) {2013-01-23 12:17:04}
set macrosdata(MultipleWavefrontObjectsToCurrentLayer,PrePost) pre
set macrosdata(MultipleWavefrontObjectsToCurrentLayer,Number) 16
set macrosdata(MultipleWavefrontObjectsToCurrentLayer,Accelerators) {}
set macrosdata(MultipleWavefrontObjectsToCurrentLayer,Description) {Import a selection of multiple Wavefront Object files and send then to the current working layer.}
set macrosdata(MultipleWavefrontObjectsToCurrentLayer,InToolbar) 0
set macrosdata(MultipleWavefrontObjectsToCurrentLayer,ModificationDate) {2013-01-23 12:36:33}
set macrosdata(MultipleWavefrontObjectsToCurrentLayer,IsStandard) 1
set macrosdata(MultipleWavefrontObjectsToCurrentLayer,Icon) {folder.png imported_images folder.png themed_image}

proc MultipleWavefrontObjectsToCurrentLayer {} {
    proc _MultipleWavefrontObjectsToCurrentLayer { } {
        set multiple 1
        set filenames [MessageBoxGetFilename file read [_ "Read OBJ files"]  {} {{{Wavefront Object mesh files} {.obj }} {{All files} {.*}}} {} $multiple  ""]
        if { $filenames != "" } {
            set num_files [ llength $filenames]
            if { $num_files > 10} {               
                set resp [MessageBoxOptionsButtons [_ "Confirm"]  [_ "%d Wavefront Object files are to be imported. Continue ?" $num_files]  {0 1} [list [_ "Yes"] [_ "No#C#I don't want to do that"]] question ""]
                if { $resp == 1} {
                    set resp "no"
                }
                if { [ string equal $resp "no"]} {
                    return
                }
            }
            GidUtils::WaitState
            GidUtils::DisableGraphics
            set auto_collapse [GiD_Set AutoCollapseAfterImport]
            if { $auto_collapse } {
                GiD_Set AutoCollapseAfterImport 0 ;#temporary disable it to do the collapse only once
                set old_value_CollapseIgnoringLayers [GiD_Set CollapseIgnoringLayers]
                GiD_Set CollapseIgnoringLayers 0 ;#to not join entities of different files
            }
            # add collapsing
            set end_progress [ expr $num_files + 1]
            # GidUtils::EnableGraphics
            PostProgressBar 0 $end_progress [_ "Importing %d Wavefront Object files" $num_files]  [_ "Importing %d Wavefront Object files" $num_files]
            # update idletasks
            # GidUtils::DisableGraphics
            set idx_files 0
            foreach filename $filenames {
                # set layername [file tail $filename]
                # if { [lsearch [GiD_Info layers] $layername] == -1 } {
                    #     GiD_Process 'Layers New $layername
                    # } else {
                    #     GiD_Process 'Layers ToUse $layername
                    # }
                GiD_Process Mescape Files OBJRead $filename
                incr idx_files
                # GidUtils::EnableGraphics
                PostProgressBar $idx_files $end_progress [_ "Imported %d of %d Wavefront Objects" $idx_files $num_files]
                # update idletasks
                # GidUtils::DisableGraphics
            }
            # GiD_Process 'Layers Delete Layer0 ;#delete this layer if empty
            if { $auto_collapse } {
                # GidUtils::EnableGraphics
                PostProgressBar $num_files $end_progress [_ "Collapsing imported objects"]
                # update idletasks
                # GidUtils::DisableGraphics
                GiD_Process Mescape Utilities Collapse Model Yes
                GiD_Set AutoCollapseAfterImport $auto_collapse
                GiD_Set CollapseIgnoringLayers $old_value_CollapseIgnoringLayers
            }
            PostProgressBar $end_progress $end_progress
            GidUtils::EnableGraphics
            GidUtils::EndWaitState
            Layers::FillInfo
            GiD_Process 'Zoom Frame
            if { [GiD_Info project ViewMode] != "MESHUSE" } {
                GiD_Process escape escape escape escape Meshing MeshView escape escape escape escape escape
            }
            GidUtils::SetWarnLine [_ "Read %s Wavefront OBJect files" [llength $filenames]]
        }
        return 0
    }
    
    _MultipleWavefrontObjectsToCurrentLayer
}

#[_ "Send entities to the back (hidden) part of a layer"]
set {macrosdata(Send to back,Icon)} {send_to_back.png imported_images send_to_back.png themed_image}
set {macrosdata(Send to back,Description)} {Send entities to the back (hidden) part of a layer}
set {macrosdata(Send to back,Active)} 1
set {macrosdata(Send to back,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(Send to back,Group)} Layers
set {macrosdata(Send to back,InToolbar)} 0
set {macrosdata(Send to back,CreationDate)} {2004-11-18 21:53:33}
set {macrosdata(Send to back,Number)} 17
set {macrosdata(Send to back,IsStandard)} 1
set {macrosdata(Send to back,PrePost)} pre
set {macrosdata(Send to back,Accelerators)} Ctrl-F1

proc {Send to back} {} {
    GiD_Process 'Layers SendToBack LowerEntities Surfaces
}

#[_ "Send unselected entities to the back (hidden) part of a layer"]
set {macrosdata(Send to back (Opposite),PrePost)} pre
set {macrosdata(Send to back (Opposite),Accelerators)} Ctrl-F2
set {macrosdata(Send to back (Opposite),Active)} 1
set {macrosdata(Send to back (Opposite),Description)} {Send unselected entities to the back (hidden) part of a layer}
set {macrosdata(Send to back (Opposite),IsStandard)} 1
set {macrosdata(Send to back (Opposite),ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(Send to back (Opposite),Number)} 18
set {macrosdata(Send to back (Opposite),Icon)} {send_to_back_opposite.png imported_images send_to_back_opposite.png themed_image}
set {macrosdata(Send to back (Opposite),InToolbar)} 0
set {macrosdata(Send to back (Opposite),Group)} Layers
set {macrosdata(Send to back (Opposite),CreationDate)} {2004-11-18 21:53:33}

proc {Send to back (Opposite)} {} {
    GiD_Process 'Layers SendToBackOpposite LowerEntities Surfaces
}

#[_ "Send to the visible front part entities in back layers"]
set {macrosdata(Bring to front,IsStandard)} 1
set {macrosdata(Bring to front,Description)} {Send to the visible front part entities in back layers}
set {macrosdata(Bring to front,Active)} 1
set {macrosdata(Bring to front,PrePost)} pre
set {macrosdata(Bring to front,Group)} Layers
set {macrosdata(Bring to front,CreationDate)} {2004-11-30 18:57:31}
set {macrosdata(Bring to front,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(Bring to front,Icon)} {bring_to_front.png imported_images bring_to_front.png themed_image}
set {macrosdata(Bring to front,Number)} 19
set {macrosdata(Bring to front,Accelerators)} {}
set {macrosdata(Bring to front,InToolbar)} 0

proc {Bring to front} {} {
    GiD_Process 'Layers BringToFrontAll Escape
}

#[_ "Send to back"]
set {macrosdata(Send to back E,Group)} Layers
set {macrosdata(Send to back E,Number)} 20
set {macrosdata(Send to back E,PrePost)} post
set {macrosdata(Send to back E,CreationDate)} {2004-11-30 20:20:29}
set {macrosdata(Send to back E,InToolbar)} 0
set {macrosdata(Send to back E,Icon)} {send_to_back.png imported_images send_to_back.png themed_image}
set {macrosdata(Send to back E,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(Send to back E,Active)} 0
set {macrosdata(Send to back E,Accelerators)} Ctrl-F1
set {macrosdata(Send to back E,IsStandard)} 1
set {macrosdata(Send to back E,Description)} {Send to back}

proc {Send to back E} {} {
    set ::GidPriv(LayersBackOpposite) 0
    PDSendToBack ""  Elements
}

#[_ "Send to back (Opposite)"]
set {macrosdata(Send to back E (opposite),Description)} {Send to back (Opposite)}
set {macrosdata(Send to back E (opposite),Active)} 0
set {macrosdata(Send to back E (opposite),Accelerators)} Ctrl-F2
set {macrosdata(Send to back E (opposite),Number)} 21
set {macrosdata(Send to back E (opposite),ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(Send to back E (opposite),Group)} Layers
set {macrosdata(Send to back E (opposite),Icon)} {send_to_back_opposite.png imported_images send_to_back_opposite.png themed_image}
set {macrosdata(Send to back E (opposite),PrePost)} post
set {macrosdata(Send to back E (opposite),InToolbar)} 0
set {macrosdata(Send to back E (opposite),CreationDate)} {2004-11-30 20:24:54}
set {macrosdata(Send to back E (opposite),IsStandard)} 1

proc {Send to back E (opposite)} {} {
    set ::GidPriv(LayersBackOpposite) 1
    PDSendToBack ""  Elements
}

#[_ "Bring to front"]
set {macrosdata(Bring to front E,CreationDate)} {2004-11-30 20:21:40}
set {macrosdata(Bring to front E,Accelerators)} {}
set {macrosdata(Bring to front E,Active)} 0
set {macrosdata(Bring to front E,Description)} {Bring to front}
set {macrosdata(Bring to front E,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(Bring to front E,InToolbar)} 0
set {macrosdata(Bring to front E,Group)} Layers
set {macrosdata(Bring to front E,PrePost)} post
set {macrosdata(Bring to front E,Icon)} {bring_to_front.png imported_images bring_to_front.png themed_image}
set {macrosdata(Bring to front E,Number)} 22
set {macrosdata(Bring to front E,IsStandard)} 1

proc {Bring to front E} {} {
    PDSendToBack "" AllToFront
}

#[_ "Create a trimmed surface from a base surface and a new boundary"]
set {macrosdata(Trimmed surface,Accelerators)} {}
set {macrosdata(Trimmed surface,Active)} 1
set {macrosdata(Trimmed surface,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(Trimmed surface,Number)} 23
set {macrosdata(Trimmed surface,PrePost)} pre
set {macrosdata(Trimmed surface,Description)} {Create a trimmed surface from a base surface and a new boundary}
set {macrosdata(Trimmed surface,CreationDate)} {2004-11-18 21:53:33}
set {macrosdata(Trimmed surface,Group)} {Geometry Creation}
set {macrosdata(Trimmed surface,Icon)} {surface_trim.png imported_images surface_trim.png themed_image}
set {macrosdata(Trimmed surface,IsStandard)} 1
set {macrosdata(Trimmed surface,InToolbar)} 0

proc {Trimmed surface} {} {
    GiD_Process MEscape Geometry Create TrimmedNurb
}

#[_ "Create a hole in a surface from a line's loop "]
set {macrosdata(Hole surface,IsStandard)} 1
set {macrosdata(Hole surface,InToolbar)} 0
set {macrosdata(Hole surface,Description)} {Create a hole in a surface from a line's loop }
set {macrosdata(Hole surface,CreationDate)} {2004-11-18 21:53:33}
set {macrosdata(Hole surface,Icon)} {surface_hole.png imported_images surface_hole.png themed_image}
set {macrosdata(Hole surface,Active)} 1
set {macrosdata(Hole surface,Accelerators)} {}
set {macrosdata(Hole surface,Group)} {Geometry Edit}
set {macrosdata(Hole surface,PrePost)} pre
set {macrosdata(Hole surface,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(Hole surface,Number)} 24

proc {Hole surface} {} {
    GiD_Process MEscape Geometry Edit HoleNurb
}

#[_ "Create a new surface from a family of parallel lines"]
set {macrosdata(Surfaces from parallel lines,PrePost)} pre
set {macrosdata(Surfaces from parallel lines,Description)} {Create a new surface from a family of parallel lines}
set {macrosdata(Surfaces from parallel lines,Icon)} {surface_parallel_lines.png imported_images surface_parallel_lines.png themed_image}
set {macrosdata(Surfaces from parallel lines,Group)} {Geometry Creation}
set {macrosdata(Surfaces from parallel lines,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(Surfaces from parallel lines,Active)} 1
set {macrosdata(Surfaces from parallel lines,CreationDate)} {2006-02-14 21:44:20}
set {macrosdata(Surfaces from parallel lines,Number)} 25
set {macrosdata(Surfaces from parallel lines,InToolbar)} 0
set {macrosdata(Surfaces from parallel lines,Accelerators)} {}
set {macrosdata(Surfaces from parallel lines,IsStandard)} 1

proc {Surfaces from parallel lines} {} {
    GiD_Process MEscape Geometry Create NurbsSurface ParallelLines
}

#[_ "Move a point (Warning: surfaces can't support big deformation)"]
set {macrosdata(move point,Number)} 26
set {macrosdata(move point,InToolbar)} 1
set {macrosdata(move point,Icon)} {point_move.png imported_images point_move.png themed_image}
set {macrosdata(move point,PrePost)} pre
set {macrosdata(move point,Accelerators)} {}
set {macrosdata(move point,IsStandard)} 1
set {macrosdata(move point,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(move point,Group)} {Geometry Edit}
set {macrosdata(move point,Description)} {Move a point (Warning: surfaces can't support big deformation)}
set {macrosdata(move point,Active)} 1
set {macrosdata(move point,CreationDate)} {2006-02-14 22:13:38}

proc {move point} {} {
    GiD_Process MEscape Geometry Edit MovePoint
}

#[_ "Divide a line in a number of divisions"]
set {macrosdata(Divide line num divisions,Description)} {Divide a line in a number of divisions}
set {macrosdata(Divide line num divisions,InToolbar)} 1
set {macrosdata(Divide line num divisions,Active)} 1
set {macrosdata(Divide line num divisions,CreationDate)} {2006-02-14 22:32:48}
set {macrosdata(Divide line num divisions,Number)} 27
set {macrosdata(Divide line num divisions,Accelerators)} {}
set {macrosdata(Divide line num divisions,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(Divide line num divisions,IsStandard)} 1
set {macrosdata(Divide line num divisions,Group)} {Geometry Edit}
set {macrosdata(Divide line num divisions,Icon)} {line_divide_nparts.png imported_images line_divide_nparts.png themed_image}
set {macrosdata(Divide line num divisions,PrePost)} pre

proc {Divide line num divisions} {} {
    GiD_Process MEscape Geometry Edit DivideLine Multiple NumDivisions
}

#[_ "Divide a line near a point"]
set {macrosdata(Divide line near point,Number)} 28
set {macrosdata(Divide line near point,Accelerators)} {}
set {macrosdata(Divide line near point,Description)} {Divide a line near a point}
set {macrosdata(Divide line near point,InToolbar)} 1
set {macrosdata(Divide line near point,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(Divide line near point,IsStandard)} 1
set {macrosdata(Divide line near point,Icon)} {line_divide_nearpoint.png imported_images line_divide_nearpoint.png themed_image}
set {macrosdata(Divide line near point,Group)} {Geometry Edit}
set {macrosdata(Divide line near point,Active)} 1
set {macrosdata(Divide line near point,CreationDate)} {2006-02-14 22:22:00}
set {macrosdata(Divide line near point,PrePost)} pre

proc {Divide line near point} {} {
    GiD_Process MEscape Geometry Edit DivideLine Multiple Point PointInLine
}

#[_ " geometry create IntersectLines"]
set {macrosdata(Intersect lines,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(Intersect lines,CreationDate)} {2004-11-18 21:53:33}
set {macrosdata(Intersect lines,Active)} 1
set {macrosdata(Intersect lines,Icon)} {intersect_lines.png imported_images intersect_lines.png themed_image}
set {macrosdata(Intersect lines,Accelerators)} {}
set {macrosdata(Intersect lines,InToolbar)} 1
set {macrosdata(Intersect lines,PrePost)} pre
set {macrosdata(Intersect lines,Group)} {Geometry Edit}
set {macrosdata(Intersect lines,Number)} 29
set {macrosdata(Intersect lines,Description)} { geometry create IntersectLines}
set {macrosdata(Intersect lines,IsStandard)} 1

proc {Intersect lines} {} {
    GiD_Process Mescape Geometry Create IntMultLines
}

#[_ " geometry create IntersectLines NoDivideLines "]
set {macrosdata(Intersect lines (no divide),Number)} 30
set {macrosdata(Intersect lines (no divide),PrePost)} pre
set {macrosdata(Intersect lines (no divide),Accelerators)} {}
set {macrosdata(Intersect lines (no divide),Description)} { geometry create IntersectLines NoDivideLines }
set {macrosdata(Intersect lines (no divide),Group)} {Geometry Edit}
set {macrosdata(Intersect lines (no divide),IsStandard)} 1
set {macrosdata(Intersect lines (no divide),ModificationDate)} {2021-12-29 14:19:44}
set {macrosdata(Intersect lines (no divide),InToolbar)} 0
set {macrosdata(Intersect lines (no divide),Active)} 1
set {macrosdata(Intersect lines (no divide),Icon)} {intersect_lines_nodivide.png imported_images intersect_lines_nodivide.png themed_image}
set {macrosdata(Intersect lines (no divide),CreationDate)} {2004-11-18 21:53:33}

proc {Intersect lines (no divide)} {} {
    GiD_Process MEscape Geometry Create IntersectLines NoDivideLines
}

#[_ "Divide a surface in n parts in u or v direction"]
set {macrosdata(Divide surface,Number)} 31
set {macrosdata(Divide surface,PrePost)} pre
set {macrosdata(Divide surface,CreationDate)} {2006-02-15 23:30:30}
set {macrosdata(Divide surface,Icon)} {surface_divide_nparts.png imported_images surface_divide_nparts.png themed_image}
set {macrosdata(Divide surface,InToolbar)} 0
set {macrosdata(Divide surface,Description)} {Divide a surface in n parts in u or v direction}
set {macrosdata(Divide surface,Accelerators)} {}
set {macrosdata(Divide surface,Group)} {Geometry Edit}
set {macrosdata(Divide surface,ModificationDate)} {2021-12-29 14:19:56}
set {macrosdata(Divide surface,Active)} 1
set {macrosdata(Divide surface,IsStandard)} 1

proc {Divide surface} {} {
    if { [GidUtils::VersionCmp 13.1.5d] >= 0 } {
        DoDivideSurfaceNumDivisions
    } else {
        #back compatibility, Macros are shared by all versions
        GiD_Process MEscape Geometry Edit DivideSurf NumDivisions
    }
}

#[_ "Split a surface from a path of lines"]
set {macrosdata(Split surface,Description)} {Split a surface from a path of lines}
set {macrosdata(Split surface,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(Split surface,PrePost)} pre
set {macrosdata(Split surface,CreationDate)} {2006-02-15 23:19:26}
set {macrosdata(Split surface,IsStandard)} 1
set {macrosdata(Split surface,Active)} 1
set {macrosdata(Split surface,Accelerators)} {}
set {macrosdata(Split surface,Icon)} {surface_divide_split.png imported_images surface_divide_split.png themed_image}
set {macrosdata(Split surface,InToolbar)} 0
set {macrosdata(Split surface,Number)} 32
set {macrosdata(Split surface,Group)} {Geometry Edit}

proc {Split surface} {} {
    GiD_Process MEscape Geometry Edit SplitSurf
}

#[_ "Intersect a surface with lines"]
set {macrosdata(Intersect surface lines,Description)} {Intersect a surface with lines}
set {macrosdata(Intersect surface lines,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(Intersect surface lines,PrePost)} pre
set {macrosdata(Intersect surface lines,CreationDate)} {2006-02-16 13:39:46}
set {macrosdata(Intersect surface lines,IsStandard)} 1
set {macrosdata(Intersect surface lines,Active)} 1
set {macrosdata(Intersect surface lines,Accelerators)} {}
set {macrosdata(Intersect surface lines,Icon)} {intersect_line_surface.png imported_images intersect_line_surface.png themed_image}
set {macrosdata(Intersect surface lines,InToolbar)} 0
set {macrosdata(Intersect surface lines,Number)} 33
set {macrosdata(Intersect surface lines,Group)} {Geometry Edit}

proc {Intersect surface lines} {} {
    GiD_Process MEscape Geometry Create IntSurfLine
}

#[_ "Intersect multiple surfaces"]
set {macrosdata(Intersect surfaces,IsStandard)} 1
set {macrosdata(Intersect surfaces,Number)} 34
set {macrosdata(Intersect surfaces,Icon)} {intersect_surfaces.png imported_images intersect_surfaces.png themed_image}
set {macrosdata(Intersect surfaces,CreationDate)} {2004-11-18 21:53:33}
set {macrosdata(Intersect surfaces,PrePost)} pre
set {macrosdata(Intersect surfaces,Group)} {Geometry Edit}
set {macrosdata(Intersect surfaces,ModificationDate)} {2021-12-29 14:20:15}
set {macrosdata(Intersect surfaces,Description)} {Intersect multiple surfaces}
set {macrosdata(Intersect surfaces,Accelerators)} {}
set {macrosdata(Intersect surfaces,InToolbar)} 0
set {macrosdata(Intersect surfaces,Active)} 1

proc {Intersect surfaces} {} {
    GiD_Process MEscape Geometry Create IntMultSurfs
}

#[_ "Creates a construction horizontal line in a temporal layer, containing one point defined by the user.\n    Length of the line depends on current geometry size"]
set {macrosdata(Construction line horizontal,Active)} 1
set {macrosdata(Construction line horizontal,CreationDate)} {2004-11-18 21:53:33}
set {macrosdata(Construction line horizontal,Number)} 35
set {macrosdata(Construction line horizontal,Accelerators)} {}
set {macrosdata(Construction line horizontal,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(Construction line horizontal,IsStandard)} 1
set {macrosdata(Construction line horizontal,Group)} {Constr. line}
set {macrosdata(Construction line horizontal,Icon)} {border_horizontal.png imported_images border_horizontal.png themed_image}
set {macrosdata(Construction line horizontal,PrePost)} pre
set {macrosdata(Construction line horizontal,Description)} {Creates a construction horizontal line in a temporal layer, containing one point defined by the user.
    Length of the line depends on current geometry size}
set {macrosdata(Construction line horizontal,InToolbar)} 0

proc {Construction line horizontal} {} {
    set layers [GiD_Info Layers]
    set ipos [lsearch -exact $layers *construction_lines*]
    if { $ipos == -1 } { GiD_Process 'Layers New *construction_lines* escape }
    if { $ipos == -1 } { GiD_Process 'Layers Color *construction_lines* 255255000 escape }
    if { $ipos != -1 } { set layers [lreplace $layers $ipos $ipos] }
    set current_layer [GiD_Info Project LayerToUse]
    GiD_Process 'Layers ToUse *construction_lines* escape
    set bbox [eval GiD_Info layers -bbox $layers]
    set max_size [expr {60*[CEGiveSizeFromBBox $bbox]}]
    set p1 [GidUtils::GetCoordinates "Enter point for H line"]
    GiD_Process MEscape Utilities Id FFNoJoin $p1 escape
    GiD_Process MEscape Geometry Create line  @[expr {-.5*$max_size}],0 @$max_size,0 escape escape
    GiD_Process 'Layers ToUse $current_layer escape
}

#[_ "Creates a construction vertical line in a temporal layer, containing one point defined by the user.\n    Length of the line depends on current geometry size"]
set {macrosdata(Construction line vertical,CreationDate)} {2004-11-18 21:53:33}
set {macrosdata(Construction line vertical,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(Construction line vertical,Accelerators)} {}
set {macrosdata(Construction line vertical,Active)} 1
set {macrosdata(Construction line vertical,IsStandard)} 1
set {macrosdata(Construction line vertical,PrePost)} pre
set {macrosdata(Construction line vertical,Group)} {Constr. line}
set {macrosdata(Construction line vertical,Number)} 36
set {macrosdata(Construction line vertical,Description)} {Creates a construction vertical line in a temporal layer, containing one point defined by the user.
    Length of the line depends on current geometry size}
set {macrosdata(Construction line vertical,InToolbar)} 0
set {macrosdata(Construction line vertical,Icon)} {border_vertical.png imported_images border_vertical.png themed_image}

proc {Construction line vertical} {} {
    set layers [GiD_Info Layers]
    set ipos [lsearch -exact $layers *construction_lines*]
    if { $ipos == -1 } { GiD_Process 'Layers New *construction_lines* escape }
    if { $ipos == -1 } { GiD_Process 'Layers Color *construction_lines* 255255000 escape }
    if { $ipos != -1 } { set layers [lreplace $layers $ipos $ipos] }
    set current_layer [GiD_Info Project LayerToUse]
    GiD_Process 'Layers ToUse *construction_lines* escape
    set bbox [eval GiD_Info layers -bbox $layers]
    set max_size [expr {60*[CEGiveSizeFromBBox $bbox]}]
    set p1 [GidUtils::GetCoordinates "Enter point for V line"]
    GiD_Process MEscape Utilities Id FFNoJoin $p1 escape
    GiD_Process MEscape Geometry Create line  @0,[expr {-.5*$max_size}] @0,$max_size escape escape
    GiD_Process 'Layers ToUse $current_layer escape
}

#[_ "Split all triangles with edge size greater than an user size"]
set {macrosdata(Split Big Triangles,Icon)} {split_elements.png imported_images split_elements.png themed_image}
set {macrosdata(Split Big Triangles,Active)} 1
set {macrosdata(Split Big Triangles,CreationDate)} {2006-01-31 12:53:02}
set {macrosdata(Split Big Triangles,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(Split Big Triangles,Description)} {Split all triangles with edge size greater than an user size}
set {macrosdata(Split Big Triangles,IsStandard)} 1
set {macrosdata(Split Big Triangles,Accelerators)} {}
set {macrosdata(Split Big Triangles,Number)} 37
set {macrosdata(Split Big Triangles,InToolbar)} 0
set {macrosdata(Split Big Triangles,PrePost)} pre
set {macrosdata(Split Big Triangles,Group)} {Mesh Edit}

proc {Split Big Triangles} {} {
    proc SplitTrianglesEdgeMaxSize { size } {
        if { $size <= 0 } return
        GiD_Process escape escape escape escape Meshing EditMesh SplitElems TriaToTria
        GiD_Process Filter:MAXLENGTH=[string trim $size]
        GiD_Process 1:
        GiD_Process MEscape Meshing EditMesh Smoothing
        GiD_Process 1:
        GiD_Process MEscape
    }
    proc SplitTrianglesEdgeMaxSizeW { } {
        if { ![info exists ::MaxEdgeSize] } {
            set ::MaxEdgeSize 1.0
        }
        set size [tk_dialogEntryRAM .gid.maxedgesize [_ "Split triangles"] [_ "Enter edge size"] gidquestionhead real+ $::MaxEdgeSize ""]
        if { $size == "--CANCEL--" } {
            return 1
        } else {
            set ::MaxEdgeSize $size
            SplitTrianglesEdgeMaxSize $size
        }
    }
    SplitTrianglesEdgeMaxSizeW
}

#[_ "Collapse all triangles with edge size smaller than an user size"]
set {macrosdata(Collapse Small Triangles,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(Collapse Small Triangles,CreationDate)} {2006-01-31 15:41:36}
set {macrosdata(Collapse Small Triangles,InToolbar)} 0
set {macrosdata(Collapse Small Triangles,Group)} {Mesh Edit}
set {macrosdata(Collapse Small Triangles,IsStandard)} 1
set {macrosdata(Collapse Small Triangles,Active)} 1
set {macrosdata(Collapse Small Triangles,Description)} {Collapse all triangles with edge size smaller than an user size}
set {macrosdata(Collapse Small Triangles,Accelerators)} {}
set {macrosdata(Collapse Small Triangles,PrePost)} pre
set {macrosdata(Collapse Small Triangles,Icon)} {collapse_edges.png imported_images collapse_edges.png themed_image}
set {macrosdata(Collapse Small Triangles,Number)} 38

proc {Collapse Small Triangles} {} {
    proc CollapseTrianglesEdgeMinSize { size } {
        if { $size <= 0 } return
        GiD_Process escape escape escape escape Utilities Collapse Edges
        GiD_Process Tolerance [string trim $size]
        GiD_Process 1:
        GiD_Process MEscape Meshing EditMesh Smoothing
        GiD_Process 1:
        GiD_Process MEscape
    }
    proc CollapseTrianglesEdgeMinSizeW { } {
        if { ![info exists ::MinEdgeSize] } {
            set ::MinEdgeSize 1.0
        }
        set size [tk_dialogEntryRAM .gid.edgesize [_ "Edge size"] [_ "Enter edge size"] gidquestionhead real+ $::MinEdgeSize ""]
        if { $size == "--CANCEL--" } {
            return 1
        } else {
            set ::MinEdgeSize $size
            CollapseTrianglesEdgeMinSize $size
        }
    }
    CollapseTrianglesEdgeMinSizeW
}

#[_ "Align the quadratic nodes to the mid edges"]
set {macrosdata(Align Quadratic Nodes,Active)} 1
set {macrosdata(Align Quadratic Nodes,InToolbar)} 0
set {macrosdata(Align Quadratic Nodes,Group)} {Mesh Edit}
set {macrosdata(Align Quadratic Nodes,IsStandard)} 1
set {macrosdata(Align Quadratic Nodes,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(Align Quadratic Nodes,PrePost)} pre
set {macrosdata(Align Quadratic Nodes,Number)} 39
set {macrosdata(Align Quadratic Nodes,Icon)} {align_quadratic_nodes.png imported_images align_quadratic_nodes.png themed_image}
set {macrosdata(Align Quadratic Nodes,CreationDate)} {2007-05-03 21:01:46}
set {macrosdata(Align Quadratic Nodes,Description)} {Align the quadratic nodes to the mid edges}
set {macrosdata(Align Quadratic Nodes,Accelerators)} {}

proc {Align Quadratic Nodes} {} {
    proc CenterQuadraticNodes { } {
        set isquadratic [GiD_Set Model(QuadraticType)]
        if { !$isquadratic } {
            return 1
        }
        ::GidUtils::WaitState
        set t0 [clock seconds]
        foreach elemtype [lrange [GiD_Info mesh] 1 end] {
            set elems [GiD_Info mesh elements $elemtype]
            if { $elemtype == "Linear" } {
                foreach {num na nb ni mat} $elems {
                    set pa [lindex [GiD_Info Coordinates $na mesh] 0]
                    set pb [lindex [GiD_Info Coordinates $nb mesh] 0]
                    set pi [MathUtils::ScalarByVectorProd 0.5 [MathUtils::VectorSum $pa $pb]]
                    GiD_Mesh edit node $ni $pi
                }
            } elseif { $elemtype == "Triangle" } {
                foreach {num n0 n1 n2 n3 n4 n5 mat} $elems {
                    foreach ni [list $n3 $n4 $n5] na [list $n0 $n1 $n2] nb [list $n1 $n2 $n0] {
                        set pa [lindex [GiD_Info Coordinates $na mesh] 0]
                        set pb [lindex [GiD_Info Coordinates $nb mesh] 0]
                        set pi [MathUtils::ScalarByVectorProd 0.5 [MathUtils::VectorSum $pa $pb]]
                        GiD_Mesh edit node $ni $pi
                    }
                }
            } elseif { $elemtype == "Quadrilateral" } {
                if { $isquadratic == 1 } {
                    foreach {num n0 n1 n2 n3 n4 n5 n6 n7 mat} $elems {
                        foreach ni [list $n4 $n5 $n6 $n7] na [list $n0 $n1 $n2 $n3] nb [list $n1 $n2 $n3 $n0] {
                            set pa [lindex [GiD_Info Coordinates $na mesh] 0]
                            set pb [lindex [GiD_Info Coordinates $nb mesh] 0]
                            set pi [MathUtils::ScalarByVectorProd 0.5 [MathUtils::VectorSum $pa $pb]]
                            GiD_Mesh edit node $ni $pi
                        }
                    }
                } else {
                    foreach {num n0 n1 n2 n3 n4 n5 n6 n7 n8 mat} $elems {
                        foreach ni [list $n4 $n5 $n6 $n7] na [list $n0 $n1 $n2 $n3] nb [list $n1 $n2 $n3 $n0] {
                            set pa [lindex [GiD_Info Coordinates $na mesh] 0]
                            set pb [lindex [GiD_Info Coordinates $nb mesh] 0]
                            set pi [MathUtils::ScalarByVectorProd 0.5 [MathUtils::VectorSum $pa $pb]]
                            GiD_Mesh edit node $ni $pi
                        }
                        set pi [lindex [GiD_Info Coordinates $n0 mesh] 0]
                        set pi [MathUtils::VectorSum $pi [lindex [GiD_Info Coordinates $n1 mesh] 0]]
                        set pi [MathUtils::VectorSum $pi [lindex [GiD_Info Coordinates $n2 mesh] 0]]
                        set pi [MathUtils::VectorSum $pi [lindex [GiD_Info Coordinates $n3 mesh] 0]]
                        set pi [MathUtils::ScalarByVectorProd 0.25 $pi]
                        GiD_Mesh edit node $n8 $pi
                    }
                }
            } elseif { $elemtype == "Tetrahedra" } {
                foreach {num n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 mat} $elems {
                    foreach ni [list $n5 $n6 $n7 $n8 $n9 $n10]  na [list $n1 $n2 $n1 $n1 $n2 $n3]  nb [list $n2 $n3 $n3 $n4 $n4 $n4] {
                        set pa [lindex [GiD_Info Coordinates $na mesh] 0]
                        set pb [lindex [GiD_Info Coordinates $nb mesh] 0]
                        set pi [MathUtils::ScalarByVectorProd 0.5 [MathUtils::VectorSum $pa $pb]]
                        GiD_Mesh edit node $ni $pi
                    }
                }
            } elseif { $elemtype == "Hexahedra" } {
                if { $isquadratic == 1 } {
                    foreach {num n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 n13 n14 n15 n16 n17 n18 n19 n20 mat} $elems {
                        foreach ni [list $n9 $n10 $n11 $n12 $n13 $n14 $n15 $n16 $n17 $n18 $n19 $n20]  na [list $n1 $n2  $n3  $n1  $n1  $n2  $n3  $n4  $n5  $n6  $n7  $n5 ]  nb [list $n2 $n3  $n4  $n4  $n5  $n6  $n7  $n8  $n6  $n7  $n8  $n8 ] {
                            set pa [lindex [GiD_Info Coordinates $na mesh] 0]
                            set pb [lindex [GiD_Info Coordinates $nb mesh] 0]
                            set pi [MathUtils::ScalarByVectorProd 0.5 [MathUtils::VectorSum $pa $pb]]
                            GiD_Mesh edit node $ni $pi
                        }
                    }
                } else {
                    foreach {num n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 n13 n14 n15 n16 n17 n18 n19 n20  n21 n22 n23 n24 n25 n26 n27 mat} $elems {
                        foreach ni [list $n9 $n10 $n11 $n12 $n13 $n14 $n15 $n16 $n17 $n18 $n19 $n20]  na [list $n1 $n2  $n3  $n1  $n1  $n2  $n3  $n4  $n5  $n6  $n7  $n5 ]  nb [list $n2 $n3  $n4  $n4  $n5  $n6  $n7  $n8  $n6  $n7  $n8  $n8 ] {
                            set pa [lindex [GiD_Info Coordinates $na mesh] 0]
                            set pb [lindex [GiD_Info Coordinates $nb mesh] 0]
                            set pi [MathUtils::ScalarByVectorProd 0.5 [MathUtils::VectorSum $pa $pb]]
                            GiD_Mesh edit node $ni $pi
                        }
                        foreach ni [list $n21 $n22 $n23 $n24 $n25 $n26]  na [list $n1  $n1  $n2  $n3  $n1  $n5 ]  nb [list $n2  $n2  $n3  $n7  $n4  $n6 ]  nc [list $n3  $n6  $n7  $n8  $n8  $n7 ]  nd [list $n4  $n5  $n6  $n4  $n5  $n8 ] {
                            set pi [lindex [GiD_Info Coordinates $na mesh] 0]
                            set pi [MathUtils::VectorSum $pi [lindex [GiD_Info Coordinates $nb mesh] 0]]
                            set pi [MathUtils::VectorSum $pi [lindex [GiD_Info Coordinates $nc mesh] 0]]
                            set pi [MathUtils::VectorSum $pi [lindex [GiD_Info Coordinates $nd mesh] 0]]
                            set pi [MathUtils::ScalarByVectorProd 0.25 $pi]
                            GiD_Mesh edit node $ni $pi
                        }
                        set pi [lindex [GiD_Info Coordinates $n1 mesh] 0]
                        set pi [MathUtils::VectorSum $pi [lindex [GiD_Info Coordinates $n2 mesh] 0]]
                        set pi [MathUtils::VectorSum $pi [lindex [GiD_Info Coordinates $n3 mesh] 0]]
                        set pi [MathUtils::VectorSum $pi [lindex [GiD_Info Coordinates $n4 mesh] 0]]
                        set pi [MathUtils::VectorSum $pi [lindex [GiD_Info Coordinates $n5 mesh] 0]]
                        set pi [MathUtils::VectorSum $pi [lindex [GiD_Info Coordinates $n6 mesh] 0]]
                        set pi [MathUtils::VectorSum $pi [lindex [GiD_Info Coordinates $n7 mesh] 0]]
                        set pi [MathUtils::VectorSum $pi [lindex [GiD_Info Coordinates $n8 mesh] 0]]
                        set pi [MathUtils::ScalarByVectorProd 0.125 $pi]
                    }
                }
            } elseif { $elemtype == "Tetrahedra" } {
                foreach {num n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 n13 n14 n15 mat} $elems {
                    foreach ni [list $n7 $n8 $n9 $n10 $n11 $n12 $n13 $n14 $n15]  na [list $n1 $n2 $n1 $n1  $n2  $n3  $n4  $n5  $n4 ]  nb [list $n2 $n3 $n3 $n4  $n5  $n6  $n5  $n6  $n6 ] {
                        set pa [lindex [GiD_Info Coordinates $na mesh] 0]
                        set pb [lindex [GiD_Info Coordinates $nb mesh] 0]
                        set pi [MathUtils::ScalarByVectorProd 0.5 [MathUtils::VectorSum $pa $pb]]
                        GiD_Mesh edit node $ni $pi
                    }
                }
            } else {
                #other elements
            }
        }
        ::GidUtils::EndWaitState
        ::GidUtils::SetWarnLine [_ "Quadratic elements set to linear shape. Time= %s seconds" [expr [clock seconds]-$t0]]
        GiD_Redraw
    }
    CenterQuadraticNodes
}

#[_ "Read preferences from a file (to avoid restart the system with other user)"]
set {macrosdata(Read Preferences,IsStandard)} 1
set {macrosdata(Read Preferences,Description)} {Read preferences from a file (to avoid restart the system with other user)}
set {macrosdata(Read Preferences,Active)} 1
set {macrosdata(Read Preferences,PrePost)} pre
set {macrosdata(Read Preferences,Group)} Tools
set {macrosdata(Read Preferences,CreationDate)} {2006-02-13 20:59:36}
set {macrosdata(Read Preferences,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(Read Preferences,Icon)} {user_open.png imported_images user_open.png themed_image}
set {macrosdata(Read Preferences,Number)} 40
set {macrosdata(Read Preferences,Accelerators)} {}
set {macrosdata(Read Preferences,InToolbar)} 0

proc {Read Preferences} {} {
    proc ReadDefaultsFromFile { filename } {
        ReadDefaultValues $filename ;#tcl values
        readdefaults $filename 0 ;#kernel values
        if { [GidUtils::ExistsWindow PREFERENCES] } {
            FillPrefValuesFromGid
        }
    }
    proc ReadDefaultsFromFileW { } {
        set w .gid
        set types [list [list [_ "Preferences file"] ".ini"] [list [_ "All files"] ".*"]]
        set filename [MessageBoxGetFilename file read [_ "Read preferences file"] "" $types .ini 0]
        if { $filename == "" } { return }
        ReadDefaultsFromFile $filename
    }
    ReadDefaultsFromFileW
}

#[_ "Save preferences to a file (to avoid restart the system with other user)"]
set {macrosdata(Save Preferences,InToolbar)} 0
set {macrosdata(Save Preferences,Description)} {Save preferences to a file (to avoid restart the system with other user)}
set {macrosdata(Save Preferences,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(Save Preferences,Number)} 41
set {macrosdata(Save Preferences,Group)} Tools
set {macrosdata(Save Preferences,IsStandard)} 1
set {macrosdata(Save Preferences,CreationDate)} {2006-02-13 21:49:11}
set {macrosdata(Save Preferences,PrePost)} pre
set {macrosdata(Save Preferences,Icon)} {user_save.png imported_images user_save.png themed_image}
set {macrosdata(Save Preferences,Active)} 1
set {macrosdata(Save Preferences,Accelerators)} {}

proc {Save Preferences} {} {
    proc SaveDefaultsToFile { filename } {
        writedefaults $filename;#kernel values
        WriteTCLDefaultsInFile $filename ;#tcl values
    }
    proc SaveDefaultsToFileW { } {
        set w .gid
        set types [list [list [_ "Preferences file"] ".ini"] [list [_ "All files"] ".*"]]
        set filename [MessageBoxGetFilename file write [_ "Save preferences file"] "" $types .ini 0]
        if { $filename == "" } { return }
        SaveDefaultsToFile $filename
    }
    SaveDefaultsToFileW
}

#[_ "Delete duplicated near points with a tolerance"]
set {macrosdata(Collapse points,CreationDate)} {2006-02-14 23:37:21}
set {macrosdata(Collapse points,Active)} 1
set {macrosdata(Collapse points,Icon)} {collapse_points.png imported_images collapse_points.png themed_image}
set {macrosdata(Collapse points,PrePost)} pre
set {macrosdata(Collapse points,ModificationDate)} {2021-12-29 14:21:00}
set {macrosdata(Collapse points,Accelerators)} {}
set {macrosdata(Collapse points,Number)} 42
set {macrosdata(Collapse points,Description)} {Delete duplicated near points with a tolerance}
set {macrosdata(Collapse points,InToolbar)} 1
set {macrosdata(Collapse points,Group)} {Geometry Edit}
set {macrosdata(Collapse points,IsStandard)} 1

proc {Collapse points} {} {
    GiD_Process MEscape Utilities Collapse Points
}

#[_ "Delete duplicated near lines with a tolerance"]
set {macrosdata(Collapse lines,Active)} 1
set {macrosdata(Collapse lines,Icon)} {collapse_lines.png imported_images collapse_lines.png themed_image}
set {macrosdata(Collapse lines,Number)} 43
set {macrosdata(Collapse lines,InToolbar)} 1
set {macrosdata(Collapse lines,CreationDate)} {2006-02-14 23:42:43}
set {macrosdata(Collapse lines,Group)} {Geometry Edit}
set {macrosdata(Collapse lines,Accelerators)} {}
set {macrosdata(Collapse lines,ModificationDate)} {2021-12-29 14:21:03}
set {macrosdata(Collapse lines,Description)} {Delete duplicated near lines with a tolerance}
set {macrosdata(Collapse lines,PrePost)} pre
set {macrosdata(Collapse lines,IsStandard)} 1

proc {Collapse lines} {} {
    GiD_Process MEscape Utilities Collapse Lines
}

#[_ "Delete duplicated entities of the model with a tolerance"]
set {macrosdata(Collapse  model,PrePost)} pre
set {macrosdata(Collapse  model,Active)} 1
set {macrosdata(Collapse  model,Description)} {Delete duplicated entities of the model with a tolerance}
set {macrosdata(Collapse  model,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(Collapse  model,Number)} 44
set {macrosdata(Collapse  model,CreationDate)} {2006-02-14 23:39:16}
set {macrosdata(Collapse  model,InToolbar)} 1
set {macrosdata(Collapse  model,Group)} {Geometry Edit}
set {macrosdata(Collapse  model,IsStandard)} 1
set {macrosdata(Collapse  model,Icon)} {collapse_alltypes.png imported_images collapse_alltypes.png themed_image}
set {macrosdata(Collapse  model,Accelerators)} {}

proc {Collapse  model} {} {
    GiD_Process MEscape Utilities Collapse Model
}

#[_ "List some filtered results"]
set macrosdata(ListResults,ModificationDate) {2011-11-04 11:03:51}
set macrosdata(ListResults,PrePost) post
set macrosdata(ListResults,CreationDate) {2006-02-15 11:38:42}
set macrosdata(ListResults,Group) View
set macrosdata(ListResults,Active) 1
set macrosdata(ListResults,InToolbar) 1
set macrosdata(ListResults,Accelerators) {}
set macrosdata(ListResults,Description) {List some filtered results}
set macrosdata(ListResults,Number) 45
set macrosdata(ListResults,IsStandard) 1
set macrosdata(ListResults,Icon) {align_text_left.png imported_images align_text_left.png themed_image}

proc ListResults {} {
    namespace eval ::PostUtils {
    }
    #over: nodes or elements
    #results: list with this possible options: nodesnum, nodescoord, elemsnum,
    #         elemsconec, elemstype, elemslayer, <result name>
    #selection: list of id's (can be used a:b)
    #presentation: TEXT or LIST
    proc ::PostUtils::SelectResults { results over selection {presentation TEXT} } {
        #scan from info of first item the kind of data returned
        set first_item_selection [lindex [GidUtils::UnCompactNumberList $selection] 0]
        if { $first_item_selection == "" } {
            return ""
        }
        set info_first_item [lrange [split [GiD_Info list_entities $over {*}$first_item_selection] \n] 1 end-1]
        set infoitems [list]
        foreach line $info_first_item {
            set key [lindex $line 0]
            if { $key == "Num:" } {
                lappend infoitems numinfo
            } elseif { $key == "Used" } {
                lappend infoitems usedbyinfo            
            } elseif { $key == "Current" } {
                lappend infoitems currentinfo
            } elseif { $key == "Gauss" } {
                lappend infoitems gausspoints
            } elseif { $key == "More" } {
                lappend infoitems moreinfo
            } else {
                error "unexpected key: $key. $info_first_item"
            }
        }
        #
        set info [lrange [split [GiD_Info list_entities $over {*}$selection] \n] 1 end-1]
        set res ""
        if { $over == "nodes" } {        
            foreach $infoitems $info {
                set res2 ""
                if { [lsearch $results "nodesnum"] != -1 } {
                    lappend res2 [lindex $numinfo 1]
                }
                if { [lsearch $results "nodescoord"] != -1 } {
                    lappend res2 [string trim [lindex $numinfo 2]]
                }
                if { [info exists moreinfo] } {
                    foreach resultinfo [lindex $moreinfo 2] {
                        set name [lindex $resultinfo 0]
                        if { [lsearch $results $name] != -1 } {
                            if { [string trim [lindex $resultinfo 1]] != "" } {
                                set resultnames($name) ""
                                foreach item [string trim [lindex $resultinfo 1]] {
                                    lappend resultnames($name) $item
                                }
                            }
                            lappend res2 [string trim [lindex [lindex $resultinfo 2] 0]]
                        }
                    }
                }
                lappend res $res2
            }
        } elseif { $over == "elements" } {
            foreach $infoitems $info {
                set res2 ""
                if { [lsearch $results "elemsnum"] != -1 } {
                    lappend res2 [lindex $numinfo 1]
                }
                if { [lsearch $results "elemsconec"] != -1 } {
                    lappend res2 [string trim [lindex $numinfo 2]]
                }
                if { [lsearch $results "elemstype"] != -1 } {
                    lappend res2 [string trim [lindex $numinfo 3]]
                }
                if { [lsearch $results "elemslayer"] != -1 } {
                    lappend res2 [string trim [lindex $numinfo 4]]
                }
                if { [info exists moreinfo] } {
                    foreach resultinfo [lindex $moreinfo 2] {
                        set name [lindex $resultinfo 0]
                        if { [lsearch $results $name] != -1 } {
                            if { [string trim [lindex $resultinfo 2]] != "" } {
                                set resultnames($name) ""
                                foreach item [string trim [lindex $resultinfo 2]] {
                                    lappend resultnames($name) $item
                                }
                            }
                            lappend res2 [string trim [lindex $resultinfo 3]]
                        }
                    }
                }
                lappend res $res2
            }
        }
        if { $presentation == "TEXT" } {
            set newres ""
            foreach item $results {
                if { [info exists resultnames($item)] && $resultnames($item) != "" } {
                    foreach component $resultnames($item) {
                        set txt $item:$component
                        regsub -all { } $txt _ txt
                        append newres $txt " "
                    }
                } else {
                    if { $item == "nodesnum" || $item == "elemsnum" } {
                        set txt [_ "Number"]
                        regsub -all { } $txt _ txt
                    } elseif { $item == "nodescoord" } {
                        set txt "X Y Z"
                    } elseif { $item == "elemsconec" } {
                        set txt [_ "connectivities"]
                    } else {
                        set txt $item
                        regsub -all { } $txt _ txt
                    }
                    append newres $txt " "
                }
            }
            set newres [string trim $newres]\n
            foreach item $res {
                append newres [eval concat $item]\n
            }
            set res $newres
        }
        WarnWinText $res
        return $res
    }
    
    proc ::PostUtils::ApplySelectResults { w } {
        global PostUtils
        set results ""
        if { $PostUtils(over) == "nodes" } {
            if { $PostUtils(output,number) } {
                lappend results nodesnum
            }
            if { $PostUtils(output,coordinates) } {
                lappend results nodescoord
            }
        } else {
            if { $PostUtils(output,number) } {
                lappend results elemsnum
            }
            if { $PostUtils(output,connectivities) } {
                lappend results elemsconec
            }
        }
        foreach item [GiD_Info postprocess get cur_results_list contour_fill] {
            if { $PostUtils(over,$item) == $PostUtils(over) && $PostUtils(output,$item) } {
                lappend results $item
            }
        }
        if { [llength $results] > 0 } {
            set SmallWinSelecting [GiD_Set SmallWinSelecting]
            FinishButton $w $w.buts [_ "Press 'Finish' to end selection"] "" disableall $SmallWinSelecting
            set entities [GidUtils::PickEntities $PostUtils(over) multiple]
            EndFinishButton $w "" $SmallWinSelecting
            if { $entities != "" } {
                ::PostUtils::SelectResults $results $PostUtils(over) $entities
            } else {
                GidUtils::SetWarnLine [_ "Must select some entity"]
            }
        } else {
            GidUtils::SetWarnLine [_ "Must select some result"]
        }
    }
    
    proc ::PostUtils::SelectResultsW { { w .gid.selectresults } } {
        global PostUtils
        InitWindow $w [_ "Select Results"] PostSelectResultsWindowGeom ::PostUtils::SelectResultsW
        ttk::frame $w.f -style ridge.TFrame -borderwidth 2
        ttk::frame $w.f.f0
        ttk::radiobutton $w.f.f0.rb0 -text [_ "Nodes"] -value nodes -variable PostUtils(over)
        ttk::radiobutton $w.f.f0.rb1 -text [_ "Elements"] -value elements -variable PostUtils(over)
        if { ![info exists PostUtils(over)] || ($PostUtils(over) != "nodes" && $PostUtils(over) != "elements") } {
            set PostUtils(over) nodes
        }
        if { ![info exists PostUtils(output,number)] } {
            set PostUtils(output,number) 1
        }
        if { ![info exists PostUtils(output,coordinates)] } { set PostUtils(output,coordinates) 0 }
        ttk::checkbutton $w.f.f0.cbcoordinates -text [_ "Coordinates"] -variable PostUtils(output,coordinates)
        if { $PostUtils(over) == "nodes" } {
            $w.f.f0.cbcoordinates configure -state normal
        } else {
            $w.f.f0.cbcoordinates configure -state disable
        }
        if { ![info exists PostUtils(output,connectivities)] } { set PostUtils(output,connectivities) 0 }
        ttk::checkbutton $w.f.f0.cbconnectivities -text [_ "Connectivities"] -variable PostUtils(output,connectivities)
        if { $PostUtils(over) == "nodes" } {
            $w.f.f0.cbconnectivities configure -state disable
        } else {
            $w.f.f0.cbconnectivities configure -state normal
        }
        if { ![info exists PostUtils(output,number)] } { set PostUtils(output,number) 0 }
        ttk::checkbutton $w.f.number -text [_ "Number"] -variable PostUtils(output,number)
        #array unset PostUtils output,*
        set results [GiD_Info postprocess get cur_results_list contour_fill]
        set cont 0
        foreach item $results {
            set header [GiD_Result get -info [list $item [GiD_Info postprocess get cur_analysis] [GiD_Info postprocess get cur_step]]]
            if { [lindex [lindex $header 0] 5] == "OnNodes" } {
                set PostUtils(over,$item) nodes
            } else {
                set PostUtils(over,$item) elements
            }
            if { ![info exists PostUtils(output,$item)] } { set PostUtils(output,$item) 0 }
            regsub -all _ $item { } item_label
            ttk::checkbutton $w.f.cb$cont -text [TranslateResultName $item_label] -variable PostUtils(output,$item)
            if { $PostUtils(over,$item) == $PostUtils(over) } {
                $w.f.cb$cont configure -state normal
            } else {
                $w.f.cb$cont configure -state disable
            }
            incr cont
        }
        grid $w.f.f0.rb0 $w.f.f0.rb1 -sticky w
        grid $w.f.f0.cbcoordinates $w.f.f0.cbconnectivities -sticky w
        grid $w.f.f0 -sticky ew
        grid $w.f.number -sticky w
        for {set i 0} {$i < $cont} {incr i} {
            grid $w.f.cb$i -sticky w
        }
        grid rowconfigure $w.f [expr {$cont+2}] -weight 1
        grid columnconfigure $w.f 0 -weight 1
        grid $w.f -sticky nsew    
        ttk::frame $w.buts -style BottomFrame.TFrame  
        ttk::button $w.buts.apply -text [_ "Select"] -command "::PostUtils::ApplySelectResults $w" -style BottomFrame.TButton
        ttk::button $w.buts.close -text [_ "Close"] -command "destroy $w" -style BottomFrame.TButton
        
        grid $w.buts.apply $w.buts.close -sticky ew -padx 5 -pady 6
        grid $w.buts -sticky sew
        grid anchor $w.buts center
        grid columnconfigure $w 0 -weight 1
        grid rowconfigure $w 0 -weight 1   
        bind $w <Destroy> [list +::PostUtils::DestroySelectResults %W $w] ;# + to add to previous script
        trace add variable PostUtils(over) write "::PostUtils::ChangeSelectResultsOver $w ;#"
    }
    
    proc ::PostUtils::DestroySelectResults { W w } {
        if { $W != $w } return
        #reenter multiple times, one by toplevel child, only interest w
        global PostUtils
        #catch { array unset PostUtils result,* } ;#remove also traces
        trace remove variable PostUtils(over) write "::PostUtils::ChangeSelectResultsOver $w ;#"
    }
    
    proc ::PostUtils::ChangeSelectResultsOver { w } {
        global PostUtils
        if { $PostUtils(over) == "nodes" } {
            $w.f.f0.cbcoordinates configure -state normal
            $w.f.f0.cbconnectivities configure -state disable
        } else {
            $w.f.f0.cbcoordinates configure -state disable
            $w.f.f0.cbconnectivities configure -state normal
        }
        set results [GiD_Info postprocess get cur_results_list contour_fill]
        set cont 0
        foreach item $results {
            if { $PostUtils(over,$item) == $PostUtils(over) } {
                $w.f.cb$cont configure -state normal
            } else {
                $w.f.cb$cont configure -state disable
            }
            incr cont
        }
    }
    ::PostUtils::SelectResultsW
}

#[_ "To create a graph of gaussian result along the time"]
set macrosdata(GraphGaussResult,CreationDate) {2019-11-14 20:04:16}
set macrosdata(GraphGaussResult,Group) View
set macrosdata(GraphGaussResult,Accelerators) {}
set macrosdata(GraphGaussResult,Active) 1
set macrosdata(GraphGaussResult,InToolbar) 1
set macrosdata(GraphGaussResult,ModificationDate) {2019-11-14 20:06:13}
set macrosdata(GraphGaussResult,Icon) {PostBarGraphPointEvolution.png imported_images PostBarGraphPointEvolution.png themed_image}
set macrosdata(GraphGaussResult,Number) 46
set macrosdata(GraphGaussResult,Description) {To create a graph of gaussian result along the time}
set macrosdata(GraphGaussResult,IsStandard) 1
set macrosdata(GraphGaussResult,PrePost) post

proc GraphGaussResult {} {
    #procedures to allow create a graph along the time of a result on a gauss point without any smoothing or extrapolation
    
    #result_id : list with 3 items: { result_name analysis_name time_step }
    proc GraphElementResult_GetElementResult { result_id element_id component_i gauss_i } {
        set data [GiD_Result get -selection [list $element_id] $result_id]
        lassign $data result_header result_unit result_components result_values
        set gauss_i_values [lindex $result_values [expr $gauss_i+1]]
        set value [lindex $gauss_i_values $component_i] 
        return $value
    }
    
    proc GraphElementResult_GetResultAllTimeSteps { analysis_name result_name element_id component_i gauss_i } {
        set time_steps [list]
        set values [list]
        if { [lsearch [GiD_Info postprocess get all_analysis] $analysis_name] == -1 } {
            error "Analysis '$analysis_name' doesn't found"
        } else {
            set all_time_steps [GiD_Info postprocess get all_steps $analysis_name]
            foreach time_step $all_time_steps {
                set result_id [list $result_name $analysis_name $time_step]
                set value [GraphElementResult_GetElementResult $result_id $element_id $component_i $gauss_i]
                if { [string is double -strict $value] } {
                    lappend time_steps $time_step
                    lappend values $value
                }
            }
        } 
        return [list $time_steps $values]
    }
    
    #get an unused graph_name, adding a suffix -2, ...-3 if base_name already exists
    proc GraphElementResult_GetUnusedGraphName { base_name } {
        set graph_name $base_name
        if { [GiD_Graph exists $graph_name] } {
            for {set i 2} {$i < 10000} {incr i} {
                set graph_name $base_name-$i
                if { ![GiD_Graph exists $graph_name] } {
                    break
                }
            } 
        }
        return $graph_name
    }
    
    #result_component: "" for scalar result, or the component name for vector or tensor results, to get only a scalar component
    #gauss_i: local gauss index starting from 0 (always 0 for one single gauss point result)
    proc GraphElementResult_NewGraph { analysis_name result_name result_component element_id gauss_i } {
        if { $result_component == "" } {
            set component_i 0
            set label_y $result_name
        } else {
            set component_i [lsearch [GiD_Info postprocess get cur_components_list $result_name] $result_component]
            if { $component_i == -1 } {
                error "result_component '$result_component' doesn't found"
            } else {
                set label_y $result_component
            }
        }
        set graph_values [GraphElementResult_GetResultAllTimeSteps $analysis_name $result_name $element_id $component_i $gauss_i]    
        if { [llength [lindex $graph_values 0]] } {
            set graph_name [GraphElementResult_GetUnusedGraphName "Evolution element ${element_id}:[expr $gauss_i+1]"]
            GiD_Graph create $graph_name Time $label_y {*}$graph_values "Sec" "" ""
        }
    }
    
    proc GraphElementResult_SelectedResult { args } {
        lassign $args result_name result_component           
        set current_analysis [GiD_Info postprocess get cur_analysis]
        set current_step [GiD_Info postprocess get cur_step]
        set header [GiD_Result get -info [list $result_name $current_analysis $current_step]]
        if { [lindex [lindex $header 0] 5] != "OnGaussPoints" } {
            W "This tool is only valid for elemental gauss-points results"
        } else {
            set gauss_name [lindex [lindex $header 0] 6]
            set gauss_n [lindex [GiD_Result gauss_point get $gauss_name] 1]
            #set gauss_i 0 ;#set hardcoded the first gauss point of the element (can allow user selection in case of more than one)
            set element_ids [GidUtils::PickEntities Elements multiple]
            if { $element_ids != "" } {            
                foreach element_id $element_ids {
                    for {set gauss_i 0} {$gauss_i < $gauss_n } {incr gauss_i} {
                        GraphElementResult_NewGraph $current_analysis $result_name $result_component $element_id $gauss_i
                    }
                }
                GidUtils::OpenWindow GRAPHS
                GiD_Redraw
            }
        }
    }
    
    proc GraphElementResult_ShowMenuResults { w } {
        set r_menu .gid.mGraphGaussResult    
        if { ![ winfo exists $r_menu]} {
            menu $r_menu
        }   
        #trick, must prefix with [namespace current] because macros are defined in the "toolbarmacros::macrospace" namespaceto not pollute the global names
        AddGraphsResultsToMenu $r_menu [namespace current]::GraphElementResult_SelectedResult Point_Evolution
        set x [expr {[winfo rootx $w]+[winfo width $w]}]
        set y [winfo rooty $w]
        tk_popup $r_menu $x $y
    }
    
    #trick to be able to show the menu on the right of a macro button (because macros doesn't provide the button name to its command)
    proc GraphElementResult_FindParentButton { } {
        set command [info level -1]
        set b ""
        set w .gid.bitmapsMacrosToolbar
        set inum 0
        while { [winfo exists $w.w$inum] } {
            if { [winfo class $w.w$inum] == "TButton" && [$w.w$inum cget -command] == $command } {
                set b $w.w$inum
                break
            }
            incr inum
        }
        return $b
    }
    
    proc GraphElementResult_Window { } {
        set w .gid.graphelementresult
        global PostUtils
        InitWindow $w [_ "Graph element result"] GraphElementResultWindowGeom GraphElementResultWindow
        ttk::frame $w.f -style ridge.TFrame -borderwidth 2               
        
        ttk::button $w.f.bresults -image [gid_themes::GetImage PostBarGraphPointEvolution.png small_icons] -command [list [namespace current]::GraphElementResult_ShowMenuResults $w.f.bresults]
        grid $w.f.bresults -sticky w    
        
        grid rowconfigure $w.f 1 -weight 1
        grid columnconfigure $w.f 1 -weight 1
        grid $w.f -sticky nsew
        
        ttk::frame $w.buts -style BottomFrame.TFrame  
        ttk::button $w.buts.close -text [_ "Close"] -command [list destroy $w] -style BottomFrame.TButton    
        grid $w.buts.close -sticky ew -padx 5 -pady 6
        grid $w.buts -sticky sew
        grid anchor $w.buts center
        grid columnconfigure $w 0 -weight 1
        grid rowconfigure $w 0 -weight 1
        bind $w <Alt-c> [list $w.buts.close invoke]
        bind $w <Escape> [list $w.buts.close invoke]
    }
    
    
    #GraphElementResult_NewGraph Hydraulic "Depth (m)" "" 676 0]
    #GraphElementResult_Window ;#to be used without set as a macro
    GraphElementResult_ShowMenuResults [GraphElementResult_FindParentButton] ;#to be used from a macro button
}

#[_ "set all labels on/off"]
set {macrosdata(Label on/off,Description)} {set all labels on/off}
set {macrosdata(Label on/off,Active)} 1
set {macrosdata(Label on/off,IsStandard)} 1
set {macrosdata(Label on/off,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(Label on/off,CreationDate)} {2006-02-15 23:50:41}
set {macrosdata(Label on/off,Group)} View
set {macrosdata(Label on/off,Number)} 47
set {macrosdata(Label on/off,Accelerators)} {}
set {macrosdata(Label on/off,Icon)} {view_labels.png imported_images view_labels.png themed_image}
set {macrosdata(Label on/off,PrePost)} prepost
set {macrosdata(Label on/off,InToolbar)} 1

proc {Label on/off} {} {
    proc SetLabelsOnOff { } {
        global GidPriv
        if { ![info exists GidPriv(labelson)] } {
            set GidPriv(labelson) 0
        }
        if { $GidPriv(labelson) } {
            set  GidPriv(labelson) 0
            GiD_Process 'Label Off
        } else {
            set  GidPriv(labelson) 1
            GiD_Process 'Label All
        }
    }
    SetLabelsOnOff
}

#[_ "Draw normals of surfaces by color"]
set {macrosdata(Draw normals surfaces color,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(Draw normals surfaces color,Accelerators)} {}
set {macrosdata(Draw normals surfaces color,Active)} 1
set {macrosdata(Draw normals surfaces color,IsStandard)} 1
set {macrosdata(Draw normals surfaces color,PrePost)} pre
set {macrosdata(Draw normals surfaces color,Group)} View
set {macrosdata(Draw normals surfaces color,Number)} 48
set {macrosdata(Draw normals surfaces color,Description)} {Draw normals of surfaces by color}
set {macrosdata(Draw normals surfaces color,InToolbar)} 0
set {macrosdata(Draw normals surfaces color,Icon)} {view_normals_surface.png imported_images view_normals_surface.png themed_image}
set {macrosdata(Draw normals surfaces color,CreationDate)} {2006-02-16 13:04:57}

proc {Draw normals surfaces color} {} {
    proc DrawNormalsColor { } {
        if { [GiD_Info project ViewMode] == "GEOMETRYUSE" } {
            GiD_Process Mescape Utilities DrawNormals Surfaces Color
        } else {
            GiD_Process Mescape Utilities DrawNormals Color
        }
        foreach layer [GiD_Info Layers] {
            foreach {on frozen} [lrange [lindex [GiD_Info Layers $layer] 0]  0 1] break
            if { $on && !$frozen } {
                GiD_Process 'Layer:$layer
            }
        }
    }
    DrawNormalsColor
}

#[_ "Show number of higerentities (parents) of lines"]
set {macrosdata(Higherentities lines,PrePost)} pre
set {macrosdata(Higherentities lines,CreationDate)} {2006-02-16 13:23:38}
set {macrosdata(Higherentities lines,Active)} 1
set {macrosdata(Higherentities lines,Group)} View
set {macrosdata(Higherentities lines,InToolbar)} 0
set {macrosdata(Higherentities lines,Accelerators)} {}
set {macrosdata(Higherentities lines,Icon)} {view_higherentity_lines.png imported_images view_higherentity_lines.png themed_image}
set {macrosdata(Higherentities lines,Number)} 49
set {macrosdata(Higherentities lines,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(Higherentities lines,IsStandard)} 1
set {macrosdata(Higherentities lines,Description)} {Show number of higerentities (parents) of lines}

proc {Higherentities lines} {} {
    if { [GiD_Info Project ViewMode] == "GEOMETRYUSE" } {
        GiD_Process Mescape Utilities DrawHigher Lines
    } else {
        GiD_Process Mescape Utilities DrawHigher Edges
    }
}

#[_ "Draw assigned mesh sizes"]
set {macrosdata(Draw mesh sizes,InToolbar)} 1
set {macrosdata(Draw mesh sizes,Icon)} {view_assigned_meshsizes.png imported_images view_assigned_meshsizes.png themed_image}
set {macrosdata(Draw mesh sizes,PrePost)} pre
set {macrosdata(Draw mesh sizes,Accelerators)} {}
set {macrosdata(Draw mesh sizes,IsStandard)} 1
set {macrosdata(Draw mesh sizes,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(Draw mesh sizes,Group)} View
set {macrosdata(Draw mesh sizes,Description)} {Draw assigned mesh sizes}
set {macrosdata(Draw mesh sizes,Active)} 1
set {macrosdata(Draw mesh sizes,CreationDate)} {2006-02-16 16:52:44}
set {macrosdata(Draw mesh sizes,Number)} 50

proc {Draw mesh sizes} {} {
    GiD_Process Mescape Meshing DrawSizes All
}

#[_ "View XY plane"]
set {macrosdata(XY View,PrePost)} prepost
set {macrosdata(XY View,Active)} 1
set {macrosdata(XY View,Group)} View
set {macrosdata(XY View,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(XY View,Icon)} {view_rotate_xy.png imported_images view_rotate_xy.png themed_image}
set {macrosdata(XY View,Number)} 51
set {macrosdata(XY View,IsStandard)} 1
set {macrosdata(XY View,CreationDate)} {2006-02-16 20:33:42}
set {macrosdata(XY View,InToolbar)} 1
set {macrosdata(XY View,Accelerators)} {}
set {macrosdata(XY View,Description)} {View XY plane}

proc {XY View} {} {
    GiD_Process 'Rotate Angle 270 90
}

#[_ "View XZ plane"]
set {macrosdata(XZ View,PrePost)} prepost
set {macrosdata(XZ View,IsStandard)} 1
set {macrosdata(XZ View,Icon)} {view_rotate_xz.png imported_images view_rotate_xz.png themed_image}
set {macrosdata(XZ View,CreationDate)} {2006-02-16 20:36:44}
set {macrosdata(XZ View,Group)} View
set {macrosdata(XZ View,Active)} 1
set {macrosdata(XZ View,Accelerators)} {}
set {macrosdata(XZ View,Description)} {View XZ plane}
set {macrosdata(XZ View,Number)} 52
set {macrosdata(XZ View,ModificationDate)} {2021-12-29 14:24:26}
set {macrosdata(XZ View,InToolbar)} 1

proc {XZ View} {} {
    GiD_Process 'Rotate Angle 270 0
}

#[_ "View YZ plane"]
set {macrosdata(YZ View,Icon)} {view_rotate_yz.png imported_images view_rotate_yz.png themed_image}
set {macrosdata(YZ View,Description)} {View YZ plane}
set {macrosdata(YZ View,Active)} 1
set {macrosdata(YZ View,ModificationDate)} {2021-12-29 14:24:40}
set {macrosdata(YZ View,Group)} View
set {macrosdata(YZ View,InToolbar)} 1
set {macrosdata(YZ View,CreationDate)} {2006-02-16 20:37:05}
set {macrosdata(YZ View,Number)} 53
set {macrosdata(YZ View,IsStandard)} 1
set {macrosdata(YZ View,PrePost)} prepost
set {macrosdata(YZ View,Accelerators)} {}

proc {YZ View} {} {
    GiD_Process 'Rotate Angle 0 0
}

#[_ "View - XY plane"]
set {macrosdata(-XY View,CreationDate)} {2006-02-16 20:37:56}
set {macrosdata(-XY View,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(-XY View,Active)} 1
set {macrosdata(-XY View,Description)} {View - XY plane}
set {macrosdata(-XY View,IsStandard)} 1
set {macrosdata(-XY View,PrePost)} prepost
set {macrosdata(-XY View,Icon)} {view_rotate_-xy.png imported_images view_rotate_-xy.png themed_image}
set {macrosdata(-XY View,Group)} View
set {macrosdata(-XY View,Accelerators)} {}
set {macrosdata(-XY View,InToolbar)} 0
set {macrosdata(-XY View,Number)} 54

proc {-XY View} {} {
    GiD_Process 'Rotate Angle 90 -90
}

#[_ "View - YZ plane"]
set {macrosdata(-YZ View,CreationDate)} {2006-02-16 20:38:46}
set {macrosdata(-YZ View,InToolbar)} 0
set {macrosdata(-YZ View,Icon)} {view_rotate_-yz.png imported_images view_rotate_-yz.png themed_image}
set {macrosdata(-YZ View,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(-YZ View,Active)} 1
set {macrosdata(-YZ View,Accelerators)} {}
set {macrosdata(-YZ View,IsStandard)} 1
set {macrosdata(-YZ View,Description)} {View - YZ plane}
set {macrosdata(-YZ View,Group)} View
set {macrosdata(-YZ View,Number)} 55
set {macrosdata(-YZ View,PrePost)} prepost

proc {-YZ View} {} {
    GiD_Process 'Rotate Angle 180 0
}

#[_ "Change the render mode"]
set macrosdata(SwapRender,CreationDate) {2008-11-03 21:44:46}
set macrosdata(SwapRender,Active) 1
set macrosdata(SwapRender,PrePost) prepost
set macrosdata(SwapRender,Accelerators) F3
set macrosdata(SwapRender,Number) 56
set macrosdata(SwapRender,Group) View
set macrosdata(SwapRender,Description) {Change the render mode}
set macrosdata(SwapRender,Icon) {view_swap_render.png imported_images view_swap_render.png themed_image}
set macrosdata(SwapRender,InToolbar) 1
set macrosdata(SwapRender,ModificationDate) {2021-12-29 14:25:14}
set macrosdata(SwapRender,IsStandard) 1

proc SwapRender {} {
    set render_mode [ GiD_Info Project RenderMode]
    if { $render_mode != "postprocess"} {
        if { $render_mode !=  "normal" } {
            GiD_Process 'Render Normal
        } else {
            GiD_Process 'Render Flat
        }
    } else {
        set postrender [ GiD_Info postprocess get cur_display_render]
        
        set lstRender [ list Normal Flat Smooth]
        set idxRender [ lsearch $lstRender $postrender]
        set nRender [ llength $lstRender]
        set nextRender [ expr ( $idxRender + $nRender + 1) % $nRender]
        GiD_Process 'Render [ lindex $lstRender $nextRender]    
    }
}

#[_ "converts scalar results to a vector"]
set {macrosdata(Scalar 2 vector,Icon)} {Scalar2Vector.png imported_images Scalar2Vector.png themed_image}
set {macrosdata(Scalar 2 vector,Number)} 57
set {macrosdata(Scalar 2 vector,IsStandard)} 1
set {macrosdata(Scalar 2 vector,Description)} {converts scalar results to a vector}
set {macrosdata(Scalar 2 vector,InToolbar)} 1
set {macrosdata(Scalar 2 vector,Group)} Tools
set {macrosdata(Scalar 2 vector,CreationDate)} {2007-02-28 17:41:13}
set {macrosdata(Scalar 2 vector,PrePost)} post
set {macrosdata(Scalar 2 vector,Accelerators)} {}
set {macrosdata(Scalar 2 vector,Active)} 1
set {macrosdata(Scalar 2 vector,ModificationDate)} {2011-11-04 11:03:51}

proc {Scalar 2 vector} {} {
    ::PostUtils::ResultScalarToVector
}

#[_ "View - XZ plane"]
set {macrosdata(-XZ View,Accelerators)} {}
set {macrosdata(-XZ View,Icon)} {view_rotate_-xz.png imported_images view_rotate_-xz.png themed_image}
set {macrosdata(-XZ View,PrePost)} prepost
set {macrosdata(-XZ View,Active)} 1
set {macrosdata(-XZ View,Group)} View
set {macrosdata(-XZ View,InToolbar)} 0
set {macrosdata(-XZ View,Number)} 58
set {macrosdata(-XZ View,ModificationDate)} {2011-11-04 11:03:51}
set {macrosdata(-XZ View,CreationDate)} {2006-02-16 20:38:30}
set {macrosdata(-XZ View,Description)} {View - XZ plane}
set {macrosdata(-XZ View,IsStandard)} 1

proc {-XZ View} {} {
    GiD_Process 'Rotate Angle 90 0
}

#[_ "Pan dynamic\n    Useful to assign one keyboard accelerator"]
set {macrosdata(Pan dynamic,IsStandard)} 1
set {macrosdata(Pan dynamic,InToolbar)} 0
set {macrosdata(Pan dynamic,PrePost)} prepost
set {macrosdata(Pan dynamic,ModificationDate)} {2006-03-01 12:33:53}
set {macrosdata(Pan dynamic,Group)} View
set {macrosdata(Pan dynamic,CreationDate)} {2006-03-01 12:27:08}
set {macrosdata(Pan dynamic,Description)} {Pan dynamic
    Useful to assign one keyboard accelerator}
set {macrosdata(Pan dynamic,Active)} 1
set {macrosdata(Pan dynamic,Icon)} {pan.png imported_images pan.png themed_image}
set {macrosdata(Pan dynamic,Accelerators)} F10
set {macrosdata(Pan dynamic,Number)} 59

proc {Pan dynamic} {} {
    GiD_Process 'DynamicPan
}

#[_ "Previous view\n    Useful to assign one keyboard accelerator"]
set {macrosdata(Previous view,PrePost)} prepost
set {macrosdata(Previous view,InToolbar)} 0
set {macrosdata(Previous view,CreationDate)} {2006-03-01 12:30:27}
set {macrosdata(Previous view,IsStandard)} 1
set {macrosdata(Previous view,Active)} 1
set {macrosdata(Previous view,Accelerators)} F9
set {macrosdata(Previous view,Description)} {Previous view
    Useful to assign one keyboard accelerator}
set {macrosdata(Previous view,ModificationDate)} {2006-03-01 12:34:11}
set {macrosdata(Previous view,Number)} 60
set {macrosdata(Previous view,Icon)} {viewprev.png imported_images viewprev.png themed_image}
set {macrosdata(Previous view,Group)} View

proc {Previous view} {} {
    GiD_Process 'Zoom previous
}

#[_ "Zoom dynamic\n    Useful to assign one keyboard accelerator"]
set {macrosdata(Zoom dynamic,Active)} 1
set {macrosdata(Zoom dynamic,IsStandard)} 1
set {macrosdata(Zoom dynamic,InToolbar)} 0
set {macrosdata(Zoom dynamic,CreationDate)} {2006-03-01 12:35:26}
set {macrosdata(Zoom dynamic,Number)} 61
set {macrosdata(Zoom dynamic,Group)} View
set {macrosdata(Zoom dynamic,PrePost)} prepost
set {macrosdata(Zoom dynamic,Accelerators)} F8
set {macrosdata(Zoom dynamic,Icon)} {zoomin.png imported_images zoomin.png themed_image}
set {macrosdata(Zoom dynamic,Description)} {Zoom dynamic
    Useful to assign one keyboard accelerator}
set {macrosdata(Zoom dynamic,ModificationDate)} {2006-03-01 12:39:22}

proc {Zoom dynamic} {} {
    GiD_Process 'Zoom Dynamic
}

#[_ "Rotate trackball\n    Useful to assign one keyboard accelerator"]
set {macrosdata(Rotate trackball,Icon)} {rotate.png imported_images rotate.png themed_image}
set {macrosdata(Rotate trackball,Group)} View
set {macrosdata(Rotate trackball,Active)} 1
set {macrosdata(Rotate trackball,PrePost)} prepost
set {macrosdata(Rotate trackball,IsStandard)} 1
set {macrosdata(Rotate trackball,ModificationDate)} {2006-03-01 12:34:26}
set {macrosdata(Rotate trackball,CreationDate)} {2006-03-01 12:32:22}
set {macrosdata(Rotate trackball,InToolbar)} 0
set {macrosdata(Rotate trackball,Number)} 62
set {macrosdata(Rotate trackball,Accelerators)} F7
set {macrosdata(Rotate trackball,Description)} {Rotate trackball
    Useful to assign one keyboard accelerator}

proc {Rotate trackball} {} {
    GiD_Process 'Rotate Trackball
}

#[_ "Rotate center\n    Useful to assign one keyboard accelerator"]
set {macrosdata(Rotate center,CreationDate)} {2004-11-18 21:53:33}
set {macrosdata(Rotate center,Icon)} {rotate.png imported_images rotate.png themed_image}
set {macrosdata(Rotate center,InToolbar)} 0
set {macrosdata(Rotate center,Active)} 1
set {macrosdata(Rotate center,Accelerators)} F6
set {macrosdata(Rotate center,Description)} {Rotate center
    Useful to assign one keyboard accelerator}
set {macrosdata(Rotate center,IsStandard)} 1
set {macrosdata(Rotate center,PrePost)} prepost
set {macrosdata(Rotate center,Number)} 63
set {macrosdata(Rotate center,ModificationDate)} {2006-03-01 12:35:02}
set {macrosdata(Rotate center,Group)} View

proc {Rotate center} {} {
    GiD_Process 'Rotate Center FJoin
}

#[_ "Info Graphical Window"]
set {macrosdata(Info Graphical Window,CreationDate)} {2010-02-12 12:57:44}
set {macrosdata(Info Graphical Window,InToolbar)} 0
set {macrosdata(Info Graphical Window,ModificationDate)} {2021-12-29 14:27:16}
set {macrosdata(Info Graphical Window,Accelerators)} {}
set {macrosdata(Info Graphical Window,Group)} View
set {macrosdata(Info Graphical Window,Description)} {Info Graphical Window}
set {macrosdata(Info Graphical Window,Active)} 1
set {macrosdata(Info Graphical Window,IsStandard)} 1
set {macrosdata(Info Graphical Window,Number)} 64
set {macrosdata(Info Graphical Window,Icon)} {PantallaInfo.png imported_images PantallaInfo.png themed_image}
set {macrosdata(Info Graphical Window,PrePost)} prepost

proc {Info Graphical Window} {} {
    lassign [GidUtils::GetMainDrawAreaSize] w h
    WarnWin "${w}x${h}"
}

#[_ "Zoom all\n    Useful to assign one keyboard accelerator"]
set {macrosdata(Zoom frame,IsStandard)} 1
set {macrosdata(Zoom frame,Description)} {Zoom all
    Useful to assign one keyboard accelerator}
set {macrosdata(Zoom frame,InToolbar)} 0
set {macrosdata(Zoom frame,Active)} 1
set {macrosdata(Zoom frame,Number)} 65
set {macrosdata(Zoom frame,CreationDate)} {2006-03-01 12:46:29}
set {macrosdata(Zoom frame,PrePost)} prepost
set {macrosdata(Zoom frame,Accelerators)} {}
set {macrosdata(Zoom frame,ModificationDate)} {2006-03-01 12:47:33}
set {macrosdata(Zoom frame,Group)} View
set {macrosdata(Zoom frame,Icon)} {zframe.png imported_images zframe.png themed_image}

proc {Zoom frame} {} {
    GiD_Process 'Zoom Frame
}

#[_ "Dimension distance between two points"]
set {macrosdata(Dimension distance,Active)} 1
set {macrosdata(Dimension distance,InToolbar)} 1
set {macrosdata(Dimension distance,CreationDate)} {2004-11-18 21:53:33}
set {macrosdata(Dimension distance,Description)} {Dimension distance between two points}
set {macrosdata(Dimension distance,Group)} Dimension
set {macrosdata(Dimension distance,Number)} 66
set {macrosdata(Dimension distance,Accelerators)} {}
set {macrosdata(Dimension distance,PrePost)} prepost
set {macrosdata(Dimension distance,Icon)} {dimension_dist.png imported_images dimension_dist.png themed_image}
set {macrosdata(Dimension distance,IsStandard)} 1
set {macrosdata(Dimension distance,ModificationDate)} {2011-11-04 11:03:51}

proc {Dimension distance} {} {
    GiD_Process Mescape Utilities Dimension Create Distance
}

#[_ "Redraw\n    Useful to assign one keyboard accelerator"]
set macrosdata(Redraw,InToolbar) 0
set macrosdata(Redraw,Accelerators) Ctrl-less
set macrosdata(Redraw,PrePost) prepost
set macrosdata(Redraw,ModificationDate) {2006-03-01 12:42:09}
set macrosdata(Redraw,Icon) {redraw.png imported_images redraw.png themed_image}
set macrosdata(Redraw,Active) 1
set macrosdata(Redraw,Description) {Redraw
    Useful to assign one keyboard accelerator}
set macrosdata(Redraw,Group) View
set macrosdata(Redraw,Number) 67
set macrosdata(Redraw,IsStandard) 1
set macrosdata(Redraw,CreationDate) {2006-03-01 12:41:13}

proc Redraw {} {
    GiD_Redraw
}

#[_ "Average of Current result"]
set {macrosdata(Average of current result,Group)} {}
set {macrosdata(Average of current result,Accelerators)} {}
set {macrosdata(Average of current result,Description)} {Average of Current result}
set {macrosdata(Average of current result,ModificationDate)} {2017-05-30 10:09:37}
set {macrosdata(Average of current result,Icon)} {AverageResult.png imported_images AverageResult.png themed_image}
set {macrosdata(Average of current result,Active)} 1
set {macrosdata(Average of current result,PrePost)} post
set {macrosdata(Average of current result,CreationDate)} {2017-05-30 10:08:04}
set {macrosdata(Average of current result,IsStandard)} 0
set {macrosdata(Average of current result,InToolbar)} 1
set {macrosdata(Average of current result,Number)} 68

proc {Average of current result} {} {
    set curr_analysis [ GiD_Info postprocess get cur_analysis]
    set curr_step [ GiD_Info postprocess get cur_step $curr_analysis]
    set curr_view [ GiD_Info postprocess get cur_results_view]
    set curr_result [ GiD_Info postprocess get cur_result]
    if { $curr_result == ""} {
        WarnWin "Please select a result to visualize."
    } else {
    
        foreach type [ list volumesets surfacesets cutsets] {
            foreach current_set [  GiD_Info postprocess get cur_$type] {
                set result_set [ GiD_Result get -sets [ list $current_set] [ list $curr_result $curr_analysis $curr_step]]
                set component_names [ lindex $result_set 2]
                # values start at index 3
                set len [ llength $result_set]
                # put it in an array for the case when several meshes share vertices, to count their results only once
                for { set idx 3} { $idx < $len} { incr idx} {
                    set entry [ lindex $result_set $idx]
                    set idx_node [ lindex $entry 0]
                    set res_value [ lindex $entry 1]
                    set array_values($idx_node) $res_value
                }
            }
        }
    
        # Now do the average:
        set max_comp 30
        for { set idx_comp 0} { $idx_comp < $max_comp} { incr idx_comp} {
            set accum($idx_comp) 0
        }
    
        set num_results 0
        foreach [ list idx_node res_value] [ array get array_values] {
            set num_comp 0
            foreach component $res_value {
                set accum($num_comp) [ expr $accum($num_comp) + $component]
                incr num_comp
            }
            incr num_results
        }
    
        if { $num_comp == 9} {
            lappend component_names Si Sii Siii
        }
    
        # do and print averages:
        set msg [ list "Average of $curr_result:"]
        for { set idx_comp 0} { $idx_comp < $num_comp} { incr idx_comp} {
            lappend msg "   [ lindex $component_names [ expr $idx_comp + 1]] = [ expr $accum($idx_comp) / $num_results]"
        }
        InfoWin [ join $msg \n] .gid
    }
}



set ::icon_chooser::ImportedDates(rotate.png) {2006-03-01 12:32:22}

image create photo ::icon_chooser::images::rotate.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAADb0lEQVRIiaWVP4gbVxDGfzoW
PIWKLVxsYcgWAatwcSoM+8ACucqlOPBBgnOQkOt8IUUCbi5VCLi4QIoYErhAiksRIkMKBxyc
q2zjgBxIoUAKHbjYgIoNqHgBFXMgmBTvSbfSnez8GVjQ7mjmmzffN/MaZsbMEoAT54weNMyM
3350BvFlZg1fFCaXYD8HzAw/KGxjozDMwjMoCnvcK2x3pzAzC/EnHWdcBDKBO0rvcCnx9paz
soogdUfd1gDuOWd/OmdH3zhbcNwA0gS6b8PxUXCuAZACLQEyRGoRBwUwVPyvFc9+h7+cszm4
c87yDKjgu36/cW5VR87ZT0AOfNDvN+q+ecAvzlkWyxCA7wGFqoJnA7j5fghcm0WuJ5BBKDYX
+CKFPCVrQbEO974Mp0vmWM0arle4A3jQKqCUo0DumTN8+pGz1qsBSWNJjwewP4IKmLO66ukW
geXZs5K7VZYsf7jbcTaILf346WJLF9oK8KTjLAeGu5AKlBWs9+ByLXDe1uOOs3VCa7tdWD+A
G13QPXh981RN85Ly+pcd4JJAruTAh2+clrRG3RKgKXAlha8zEEEE0hS236wRd3LdGSKBvBSY
QhCIwFQBSJv1kkTCrykwBsYK0wrGih9DNQ4NmAdcePioAfDk28Byugf6XPE+/HFYwv3J0qEB
9nuwswHZLugA/ATKEu7/HMbs8jIPM9vadJY2QykHCrvAwxkXL9LRW9cKK679Dy21r7YtS4SU
MK7/JOalAD90nKWqZIlwSFgvqSppIoGoBF47R6MrAb5yQa9ZArKUyH+miAhMQafgJ0o1FsoR
vHv7fJAzAH90nIkqEhPP9ZIAD4CZbHuAD75qpFReGJRw6/aKJTazExcHpZ4YgnBTwob/PG5Z
fBQqVB7KUhmOhMMH0I9tOzP/C4lns5QoXIyjImGTh/IFBJQwLiJClkIr14V04f4RQGOlxERT
PQVSwvLspcTtBxOFSdiNqpETL+hEOLnu7MKjfiOM2pIKtjbb1tN4kqmG5EmsylcwCT6Nyaux
4r1QVsKwhOFImV1WL5Tp3U/a1sqFtBlWTDjRoopUhSpyMBgqByNBAU3glacrrrZle++dtmVZ
AJIEvCpMBR9bM3iu9CaCj4krVcpEuLXq7vw3duyc7QFVcqqcuv0ngO2rbfNJqLj/kpXxNwIv
+Kjdj0LPAAAAAElFTkSuQmCC
}

set ::icon_chooser::ImportedDates(view_assigned_meshsizes.png) {2006-02-16 16:52:44}

image create photo ::icon_chooser::images::view_assigned_meshsizes.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAAA7UlEQVRIibVUSxaDIAxMpAe2
J+HC9k0XxTQ/KFadjY8JZDJBQqTA7Quq5bsAQBaa4hBvhCEXl0FShAAzs+cCQv6YqhazQU4A
gA6agPaSarAKZnyAFAWAYicHBzL4GscHtEvnWif7GK0FGagWHDZ9GJnCMPtCNN9SOdCF64zA
dMjx8wp7dqcyLomIsG5mzVq6PRPDycYWzBUys41LFTKzu8qjF0iV6Y+bvh1aPbWqO/0Pft7z
WZwTqCVMhhHyKZGMyj25niTXCiQja0ZkTqAzD3sil14y1q0/k6YcDKrvOZl/Bwf+FsHzxbc/
tNvxBgxpYwltekfDAAAAAElFTkSuQmCC
}

set ::icon_chooser::ImportedDates(collapse_points.png) {2006-02-14 23:37:21}

image create photo ::icon_chooser::images::collapse_points.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAABwUlEQVRIic2UMW7CQBBF36Lc
IU3SICG6nMINNbkBBQfgDESCPiFFUlBb4hjQBIlIILlKi0RJbeenMGt2bS8xqTKSZc/szJ8/
M+uBskgIkCl0VXxAo5EEqCXBwwMAxgUAijctgNVKDAbPSpJ1DeI1osB3nnwyySk7RKDblSTk
GYsgoSh68w4qNYQINLHnZGxrK+TOwWfb8Sj1elKaSvf3kjHhAgqE/X6rNM0kofFYgtrpVdMF
6FwsLFzsX+R6NLedJduFGD+oAmD11kkxJ1Q7D9JUBdAJzADc2PDpVBwO0O/D1xcMhy9IYMwZ
0BN3unaANbT8IpNkLQnFsZRl0my2C0/adsVybrc3Wizm9VlKLSw7VVtejg+xCNbzL8S9GU2o
NvXzBu4t0+CFOPldOA8mqCSpSRYCd5eBd97CF2NqOMWxGI+lLBPGiNlsZ8nYxyVj3OTlBMSx
eHoS39852OvrjsdHw90ddDqfRNE7t7cfxXYzxgP9tWUAzOdSu71RFL1psZgXTI9HaTLJt+9o
lG/gRoAlcVeEXH25zFd6t5v/+IPBc+Pb5IHXBHn2/X6rJFkXGyUQUwW/4NQUJOjT9Of6f/ID
V6N2rd4BlL8AAAAASUVORK5CYII=
}

set ::icon_chooser::ImportedDates() {2022-03-28 10:12:15}

image create photo ::icon_chooser::images:: -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAACVElEQVRIibWUMWvbUBSFP6ka
TBBGmEfwqCFDxowZTMiQQUPoHIIG/4BQMnYUJUPHYPQDQvGgoVPw4CEUDxk0dPDowQQNGUwQ
4RFM0GByO7hSLceOY5OeRei9c8+59777HsxDa83k5VYAaBw0RGu9gGKZlkxeLDEs05L0MTUA
jHwXwD9VcnnpocdzYe0fbdFaT/8Bjj8fFxIrYczmM7zzxbHh/Lxb3rC3lGBFjJ+OjGJD1ZQA
5F4mQNgKS4sAn+wtW4IgYD6rUoHvgfnWpn+qxK6mYldTCVsNAaYNmYeqKRkMPE5OrqhYu+T5
pg++lFJSNSVBEOC6Ls1m81X+RQ2WaUkQBHRvusS38UJiKaBx0JBVxI1hrGqpvaVk/Dx1dhxn
cZdyYqUC2WTajGwyNVh6DuPn1NA6AAZoHTB+mpmNRQhboYxGMQD5d2mAXbXl8PCQKNoHdlHb
bSOfwlcBdtWW+Dam1+tx9uXMSIYe8G8yS13qXHfEdd2CPC9W6lLnuiPRz4jR/YibXzdLD9Bc
hwxgrkMGMNchwwY3bhHSB1/Udnthk968ocvEZv9VTYm70y1el3wt521cgV1Vkgw93J0msAf0
SYZXuDvdYkw3qiDP8PtFQL2+/1ccYI96fb8Qz7GWgaopCVuhZBl4xzGOEzC6/wrskgzPcZyA
4Z0vdlWJf6re36Lpdc6oWBV6vR5JkpAkCfk7PftGzMJxnLcNVgmvqnipgaopiaKIwWBA/DtG
a4135L1beKnBIuFsnNHv9zd6oAsDy7Q+VPiVwcW3C/lI4VmD/44/wtSQAtWRMmsAAAAASUVO
RK5CYII=
}

set ::icon_chooser::ImportedDates(surface_parallel_lines.png) {2006-02-14 21:44:20}

image create photo ::icon_chooser::images::surface_parallel_lines.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAAA5klEQVRIie1VSxYDIQgLvVg9
uj1Zuhg/qEDtTLvpa9iMGpDBoMACggCpBgZHUQJag2yxxpjnwGIqlIAghABFpyRrVgLFAJBz
vpzRkB2hzIounVg+58TrXMn/VmY6g1IIZ9L6UUz1U+U9Vqd17TDoYy5QL/triTfndnCO3CuR
AlBGER6DUUej6M2g7ASjQ3y8RdZOf1Qs0lrhFVc2fKOgG7Zzw8XN01hKtQbyIwMAUkpBs1nB
rQtw3lRtHGzE43fnlvHaKLLWas7ZuX0a9q4PVwn1AFO622VSb8VlDOX7wGsd4KvBz+EJsdP1
YozLBb8AAAAASUVORK5CYII=
}

set ::icon_chooser::ImportedDates(view_rotate_-xz.png) {2006-02-16 20:38:30}

image create photo ::icon_chooser::images::view_rotate_-xz.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAABtklEQVRIia1Vu5HCMBTcd0Mu
YhKrBHdgdUAJ0AElSB3YHbgEZ6R2B6YDiIjdwV4AEvJvbHO3Mxo0eivt+/khJOHx4zciQokt
MklzzvVpIAlrLUkiSRKSxOVyebFEhCQFEfqSIuGt/rvDG845FkVBALjdbgziJHE8HqmUondE
Xra+8LLG0KOeRryyLCNJKKWYZRkB8C35uVDXNeu6JknkeU6lFL3NZ4rkvE9zmPd1BiOFqbqM
FLbguxhipGlKACiKgo/Hgz4+Y8yn1nVd01ob6gyAp9MppDJO8Q4AtNYwxky6YIxh13UhCf6C
aK3x3pOknM9nXq9XAq82fP/KbIuvDnoJgldj+QQsqvx40tcuLfVUCHrKuOqTW8rYql5qmobG
GBmeaa3RdR26ruvx9/s90jQV7+biatuWAGitpd+XZckhryzLka1HsNaG+YBoTsSjAADv9/vo
8SRJ6GdNvDZFkOc5q6oiAFZVFSa0Uopt244eH82kqYI1TcOmaeCc650753g4HPB8Pifr5vlB
IG6ltU27BmFIxodrB+YaLKbor9g8LbZit0QYpmtrhL0I/js9wBd/O1vxC5cx8RWuij0rAAAA
AElFTkSuQmCC
}

set ::icon_chooser::ImportedDates(view_rotate_-yz.png) {2006-02-16 20:38:46}

image create photo ::icon_chooser::images::view_rotate_-yz.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAABR0lEQVRIibWUPbKFIAyFD8wt
6ezuDiis2YuNS7BmBazDjdizEVdgY2NeoTDARfx7fjOODiQkOYYAO9DeBsAAQCm1Y+J2pJTR
O3sqy2yw1Cgfg3NOAND3fT6TMMVCOQXo0NMYQ03TOCMSQjgn+jE0xvjFUBVXySOOcz1w3oXf
PfURBKyqdV3nJd3kXTHGkFKK3H+uqopCKRlj/vsDAEop72ytxTzPWJaFAYAQgqZpKveeC9/3
PQkhouhR3me4LCvD5Xuy8iilonPu+ub2i5yKsMswDGSthdY6sg3HwjiOkc/3+0XbtqcFhJSS
wnbinFN4gx3bKAhHQszWLekDYO1ntxaOijBodAHu4No2XHPV7U3SVCfKrHmapqG6rv3/GIaB
tNZZW2stSwPc6vAjSn36b0FCns/zhNeH8OeETVrVJenSCl7R/VX+AKa0k3qTBrNdAAAAAElF
TkSuQmCC
}

set ::icon_chooser::ImportedDates(point_move.png) {2006-02-14 22:13:38}

image create photo ::icon_chooser::images::point_move.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAAAuElEQVRIidVUSRKAMAiL/v9J
PfRneHBEltJSqwdz6gwQlgYAi1orAcDuLC036nsBQCmFvYQ7qdAEzxIIuFubi/oMll2NXQ33
LJxwTo1myko5TzH+CdxXpOakhhGKxxGQ1Pv9YTxiH5BK3y/pfUmw6NLMP9XQthhv23Z8swkk
oY3t2cYQNzuv+xGh3Yv4yPIauAJkK9R8KmxB65dWI/sA/coX4clfPLqa/Blxa2bmLx7ONZdg
eRG/xwHEBXeq9uyL/wAAAABJRU5ErkJggg==
}

set ::icon_chooser::ImportedDates(Scalar2Vector.png) {2007-02-28 17:41:13}

image create photo ::icon_chooser::images::Scalar2Vector.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAAAlklEQVRIidVU0Q6AIAg8+L++
yflNfiA9uCaWFRbOus0H3e2AAwHcISLir1pHyGcqbAmwvoQQ/LOm9nNSkZYTztdg7ytvdMBm
KwMAjfEhW813tG7FPRrZ74nmTrcjdJM8i54E5VjZXGVS3s9M5RFRLemxEg4ZatEY44MKkuhZ
cvg2V6M0ZD2ZBtxPaOZH8ClVNeG/zRqLFaXCNw9LQe6YAAAAAElFTkSuQmCC
}

set ::icon_chooser::ImportedDates(collapse_lines.png) {2006-02-14 23:42:43}

image create photo ::icon_chooser::images::collapse_lines.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAAB1UlEQVRIic2UvWrjQBSFv/EP
azAEVX6POC5MIN2CyZtsmc5P4DaPkSYuEkJ+usBWbvQE9gsEFsupbIGks4UsZSTPKM4uLHtB
YnTn6Nxz5l4JDmMrQPXERxgA6QMi+4Esy6p4O3Lkrl6hGlEU+TcBSJJEdRUtgDhuIyFjqpsA
2u1UkdrZUwCG9VqAUWmweAtgNptVJH8izxGLxaJgsJnrRAfEimMJtpIoL68CG/T+nr/YCK6V
FsDbmwRotVp93edfha/cQb5VLJIkUW3gPtWsq6sfpdn6kODoi8Zj6f4+FdVZ9/dCQqNRrIeH
tN44j6Y9YDiM9fSUOsEdl8kw/MZwGNNup0Dbz14YK9ajUayXFzklVWfdknJ29t1p2DvG8/lc
+4/HC/bl/n3YDT1G0VG4lrU2xkAYhgRBQBAEmk6n3qF396a5AIDpdrsMBgNOTgZcX/e4vc3q
oyoJjMnxDkfNvxmLRFEkXVzEgq3u7g7GvSSr547zZhVar6Xz81iw0+NjtdAxahvJ7WuzyTQe
546en9M/Jq6Q4ziKzUY6Pc0dvb5mjYU6jpyzicbY+fyeO0qAn9zc/FKvB5PJhH6/bxy8OXmD
Gu95X16W/wctl0svx7Ef1/8VvwGaEJyYYWcEswAAAABJRU5ErkJggg==
}

set ::icon_chooser::ImportedDates(sendto.png) {2017-02-27 15:50:00}

image create photo ::icon_chooser::images::sendto.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAAEcUlEQVRIiZVVXWgUVxg9987M
TjaT3eyOazab2I2zqakiCkFI17rY1lgLMY3g9iEt+mJBLVJFopRQxbRGBCFuC7IgoaIFnxSh
WtJVl5Y++GALWgj+lJJSlfVvY4xxYg2bePqw7mQ3MbV+8MHcuXfuOed+57sjSKIQKgCMRiIE
AAkAppTIpAIQxcvEQDjMBaqKvZs2ATWJBG07RpIASZBEla6z8OxM2HaM584tom1ZvF9XR5KT
G3t9Pnq6ugAAB0OhUsTikABw/vx5GppGvb5+cpWu67Qti7ZlMZVKMagoeVbz5rlp2zH6XQpt
y6IUgiQh/7oxgYbeOGJrqoD+WkA8P4jxsTEBAIHr19nQOx/Sfy0vfSZWM4VaeHBpGjO1tSiX
EgBgCoHTySSy2SzWrVsnnMMtIAQCbo4+GsPga3Od3UwhMPR8/o9cDu8/fZo/DwB4OJxD9G1/
Xkh/LQ6sfwbl5t+48cMsoL8W6c80dHV1TVIyq6rwe2A5GnqjAIDB3gOgqmDlj+0QioLR3y5g
3zuYrOrUdBsG3Y2NXN7SUlLtVz4l+fIlpaEWD0yvlx8AuKDruOX1AgDGBgZEyRcksWPHDsbc
bsckrkiEqVSKrkiEU7XJvr4+/nLoEFLV1SUbrU+nAQDfBYOsLCtzhAqSCAZN1tdPYNE14KB/
Vp6eyDMpFO71mzdxZ3xcqB6PhxcvzkddXRkAoMH6FfuFD0OGAQCI372Lqx4P7oyPC0cDSUhV
8tatKG07RtuO0XBLLplvOGMp8/4WnZ2dPOJyQfH5MPH4MQb3fomHD6KQMr9hS0s/rl4Fstlh
4Wg4e/YsW+NxVHV3AwDG793Dw6974I0ug75mDQDgdkcHODEhSip99OhRftrRAXP3buddLpPB
yOHDeDoyUqqhOHft2kVvOEypadPq8MpeetV4qfd27tzJVatWTWOh19eX3j8zxYskNzU10aUo
/CIQcOxoWxY/9/noikT+05rTrFoAMk2TQV3nzzU1/CmbxVA4jE6PxyFiCoGEaeJ0MonKtWud
97NVlYHyciaTyRerKUZrb2+nKiVXGwYH6+pK2Bc3VrGC4rnvg0HOUVVWaBr37Nkz+d9oa2uj
pincsmWO4+TLl5dw4cJKGqrkV37/jECF8UA4zKius0xKbiq6lRz2GzZsoK6rXLq0kgMDTQ5Q
IY8ceYM+j8o55RrToRBHLIsfVVRQl4LvNnp55sxChkIuzp5dwXQ6PR2gu7ubWlkZffE4Q/v3
U1+wgIqm8L3VAQ4OvjUNcHh4Wck4k4myrW0WdV1hY2ODA+D0QWjuXGbv34exciUqVqwoqdPE
gwcYOnYMz+7dxofra/HtN2FcuTKKzZv/RP+VJ6hYNA/Km80YPn4cLilx5sQJNDc3T/b+1Dh1
6hQ/2bgRT3I5GPE43IsXlxojl4PQtGnf/XPpEh6dPAmP34/hTGbm1p+aPT09NDweGtXVDGzd
yppEgjWJBKv37aMrEqF0ufjxtm0v7In/BTA1t2/fztbW1pc2GUn8C+Z/VtTZrQ8GAAAAAElF
TkSuQmCC
}

set ::icon_chooser::ImportedDates(split_elements.png) {2006-01-31 12:53:02}

image create photo ::icon_chooser::images::split_elements.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAAAzUlEQVRIieVVWxKCMAxMWg6M
J6kHxokfUto8SIOKM+p+0bLdDc0DAAkiorYqmRRD8/kZFyVTQPQldNEQAECqxnidGBEFGxAR
z4xsjSN+ASXTdr/80PacGHletNsDqF4w5X2n78DRmEclm9iqqmuXVjt76qKoqHLbphX75Yby
AFfvEuZ/iySua8tVNYQifKBB/g9ORt4mfrC5CbrSDos7Jq5gMnedSGleRi3PDCeHaEL+KkAN
0BHEQLVa8PmkG/feV1EgHwr+OIqija0fxB31sAxf0TzxcgAAAABJRU5ErkJggg==
}

set ::icon_chooser::ImportedDates(rotate.png) {2004-11-18 21:53:33}

image create photo ::icon_chooser::images::rotate.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAADb0lEQVRIiaWVP4gbVxDGfzoW
PIWKLVxsYcgWAatwcSoM+8ACucqlOPBBgnOQkOt8IUUCbi5VCLi4QIoYErhAiksRIkMKBxyc
q2zjgBxIoUAKHbjYgIoNqHgBFXMgmBTvSbfSnez8GVjQ7mjmmzffN/MaZsbMEoAT54weNMyM
3350BvFlZg1fFCaXYD8HzAw/KGxjozDMwjMoCnvcK2x3pzAzC/EnHWdcBDKBO0rvcCnx9paz
soogdUfd1gDuOWd/OmdH3zhbcNwA0gS6b8PxUXCuAZACLQEyRGoRBwUwVPyvFc9+h7+cszm4
c87yDKjgu36/cW5VR87ZT0AOfNDvN+q+ecAvzlkWyxCA7wGFqoJnA7j5fghcm0WuJ5BBKDYX
+CKFPCVrQbEO974Mp0vmWM0arle4A3jQKqCUo0DumTN8+pGz1qsBSWNJjwewP4IKmLO66ukW
geXZs5K7VZYsf7jbcTaILf346WJLF9oK8KTjLAeGu5AKlBWs9+ByLXDe1uOOs3VCa7tdWD+A
G13QPXh981RN85Ly+pcd4JJAruTAh2+clrRG3RKgKXAlha8zEEEE0hS236wRd3LdGSKBvBSY
QhCIwFQBSJv1kkTCrykwBsYK0wrGih9DNQ4NmAdcePioAfDk28Byugf6XPE+/HFYwv3J0qEB
9nuwswHZLugA/ATKEu7/HMbs8jIPM9vadJY2QykHCrvAwxkXL9LRW9cKK679Dy21r7YtS4SU
MK7/JOalAD90nKWqZIlwSFgvqSppIoGoBF47R6MrAb5yQa9ZArKUyH+miAhMQafgJ0o1FsoR
vHv7fJAzAH90nIkqEhPP9ZIAD4CZbHuAD75qpFReGJRw6/aKJTazExcHpZ4YgnBTwob/PG5Z
fBQqVB7KUhmOhMMH0I9tOzP/C4lns5QoXIyjImGTh/IFBJQwLiJClkIr14V04f4RQGOlxERT
PQVSwvLspcTtBxOFSdiNqpETL+hEOLnu7MKjfiOM2pIKtjbb1tN4kqmG5EmsylcwCT6Nyaux
4r1QVsKwhOFImV1WL5Tp3U/a1sqFtBlWTDjRoopUhSpyMBgqByNBAU3glacrrrZle++dtmVZ
AJIEvCpMBR9bM3iu9CaCj4krVcpEuLXq7vw3duyc7QFVcqqcuv0ngO2rbfNJqLj/kpXxNwIv
+Kjdj0LPAAAAAElFTkSuQmCC
}

set ::icon_chooser::ImportedDates(dimension_dist.png) {2022-03-01 13:09:45}

image create photo ::icon_chooser::images::dimension_dist.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAAAdElEQVRIiWNgIAOs2r/qPzn6
aA/+QzEyn4HhwJ0DWN3LRAcXwRwCDTNc4YYqjsvB2ADJnmBEWEnIEkYC8kMT4IwD5DiiXdqA
RS7JNtBeAyMDPHSIShrDM30MNYAcC9Qul0djeJAApFIbQ4xcgGIWHSvDoQoA7hgjUDL+uQwA
AAAASUVORK5CYII=
}

set ::icon_chooser::ImportedDates(view_rotate_-xy.png) {2006-02-16 20:37:56}

image create photo ::icon_chooser::images::view_rotate_-xy.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAABwUlEQVRIia1Vy62DMBCcjbiT
DkIJFBAp7iDpgBLCORfTgemEnHLFHeAOkkIizTvk2c988oAoI60E3sWzu7M2QhIeG0Tovciy
MJCE1poksdvtSBJpmlJIQkRIUiY/FxGKSGDpMY6+qKqKdV0TAJRSDOQkcTwemaYpfSLy8vWJ
5zmGGfU4YjscDqHQXyp0XUdjzF9Q27Zs25YkYYxhmqb0vvP5HJ7f5vQO73N9gxHDlC4jhjX4
rIYYeZ4TAOq65u12Y1VVBF6pAkACANZaWmsBAM45EREWRYGyLOVyuXgtJDBkWQalFJRSoxSc
c3K9Xv8Whir7cS6Kgvf7nbHyQbi5Vv5b9BwEQOjrEpaND/o4pbmZCkVPORcdubmOLZolay2V
UjJcS5IEz+cTQ59zjgCQ57kskmG73UJEWFUVnXMUET4eD+z3e7HWQkQYbcqyLJHn+Ys0niKt
NfGSMdhwygCECfPWdV2Ib5qm55u8lIbmNzDGsGmayY201oxH2lvSE2RCMH8S43WS+D22PJ1O
AgBKKWRZNmpvEDkepaVDuwThkhxW8i2C3piuuQWWYvVtsRbJXMCwXWsr7FXw7fYAH/x21uIH
qafDaQ9oMtIAAAAASUVORK5CYII=
}

set ::icon_chooser::ImportedDates(view_rotate_xz.png) {2006-02-16 20:36:44}

image create photo ::icon_chooser::images::view_rotate_xz.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAABkUlEQVRIia1VwbGCMBB963iH
sxfTgXQgnWAH2gHpgBI8e9IOsAPoIDfP6eD9gyaTEPiA45vJTEg2eft2N4uQhMMWAIqiIABI
uCOJmdY6NQNJP47HI91cSEJESFIQYOMZRCgi/q743qkTAJDnOaMNknK73Xi5XN6G77WYeJ5j
6FEiMBR5vV7ZdR0B+EEyPfChpDtYVRWNMXGk1mDa1wkkDGN5SRjW4DsNIZRSdK6VZclE3zCk
9/ud+/3eh9EYw6qq/Pd2jNZa6+dFUcBaK5MMh8OBLnkAWNc167qeL/HFoucgH2rn3izLxhl9
7dJcTXnRY5uLntxcxGZr6fl8UikFpZS/pO975nkOa22UZIeyLKcTPRzGGGZZxvP5zK7rmGVZ
lHg32rb1hRG99jmCsMIARO0g3HMVmLSTNQqcl03TkCSapiEAtm07ennSk4YJ6/uej8cDp9Mp
yoHWmrvdDq/XazRvWmtv6wnCUlpatEvgm2S4uLRhLsG/IfoFVneLtRjtkCGG4VqrMFLw6/AA
X/x21uIPMhr80/GTZ/cAAAAASUVORK5CYII=
}

set ::icon_chooser::ImportedDates(arc.png) {2022-02-28 21:24:54}

image create photo ::icon_chooser::images::arc.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAABXklEQVRIibWUP84BURTFz2VK
ZIJKo7UBiUIhCrEAa9BZiVpBZwUalU1oFRIJUVGJUvL7igkzfGNmnnCSm3kz75573v3zxgDd
kVMETy+WzU3AwwYDuK+f+HfU6yJ2w8ziN/4JjscKvaLigHw/OEC2UKkbZhbElYQZSFCpwGgU
JvpqsR+jVq0+k1MJd2u3A2JmwmqVUo538LI6mhmS3BVyZkZgwvNEsym2W72PEpfg+Qzlcnwv
EiszncJu59iH+RyOx5CUqQetliMB0GLh2OlazbHTniduN9nbC/GKYjF4ZlYwM4DsCg8i8Bgs
SQLMNUgSUk+0XIrJRHQ6wvdFqST6fXE6JcxnBM63QZL2e9HrBevNRskZZ52LpFH2fTgcPrg8
LjabQaMB6/Wz0EclSkKhIK7XsGzOY5eG4VDqdsMB+HoGklQqicslyOLrGUhSPh+ufyIQxddL
9PpX+EkPovgDwSV73xprT+YAAAAASUVORK5CYII=
}

set ::icon_chooser::ImportedDates(surface_divide_nparts.png) {2006-02-15 23:30:30}

image create photo ::icon_chooser::images::surface_divide_nparts.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAABBUlEQVRIic1VSxaEMAhL5nn/
K2cW/civo3bjZFOlpIGCCBgQgCSBbC8YBg9BEpqZ04eIOIm0VKhZGChR5hKSZXHGOqMnAJAp
kSbOHJVx34oqObMbW3CL82hCserdX5nUE4gEQ5Q9wZEqQqhLzOBNuBoPHIXfqF95Sq+DnKvd
7Q0z2cfQduLudjh2Ux3Uy5Yip+lIF2j6yjiWszNiZhpLVBoqHxRQcaE/7i5+UiG+SmC585fY
7e/QFlsCZ83zA2bT2qZZCSx74RbyMF6/tKhPk1CN/mpk3Rbw/HIArrDI5KLIYTTTLbXKM4GN
bMJMutmm659MqWGa6o6Aysd+1BXnocDrP56ML8MRfv8ZBj+zAAAAAElFTkSuQmCC
}

set ::icon_chooser::ImportedDates(send_to_back.png) {2004-11-18 21:53:33}

image create photo ::icon_chooser::images::send_to_back.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAACkklEQVRIie2VS0hUcRTGf+dq
NDo+kmCMjLJcZIWBNFGBLaIHQcFsatMieqyiloXQrsJNRUKrFgUVIS1q0yJGggx62MakIg0U
NWN6OaU5jk3hzNdinKtzZ1KDFgV9cLn3nnu+8/3P/3/OueBFcE+jwFH6zReQJI+LJOx8WJJw
AGhrA8AyXwHMTJJsiucLCH+VCJ0WvoAAb+Q5IEvDNZpNrgRo7f2gghNXXI9CACtZIt+RU+hF
D1ayRJlISOLoo27ZsoY8qf4xSHKvhsPNssPNAkfT7cBUFgC1e8/o2NVWPQYUjWFNN3E2HJKZ
k7vQTBRf5UpdfvletqNRtmJbjoJNJwBYUaUKFq8llUygLxE02uf6mJlX56/B9MQkucXqTTgv
AV9A4Z737rHPSMAXUGIsobqWdvlvt2eRMijMPFhRpdp7nlNz6QGRjm6cqlKKL5zDqd6s1MBD
dz+djDPz/GyqDTLS0Z0OsKiM+IF9KNqfKdX8ObRHEwpeDKvsdlhYQc6SsmoJoN6Xvsdej+bd
0UKvoXT5eiaKyzPSeUn/8Rvw1qe3JOtC6ab1joaZ6jrn1LywokoFdx8kER3k7NN+ut5uIdW2
C6dmu9R3Hyk5Y5f/UsANHB+k890w6+908urZK1KRGLZuFRX7dzJyPYxTvVl68+SXQllGSemR
NN9P+cIaYskEEyUVOFtDJIdi2HgMAba6Fjo6INIFY8Mw/hWNf4H4O6SUTR9dORno28csUTPT
nuMnGQ8s4F7rYxJDMUqDZcRudaHeuyg1MeMW5bSaFwXly7m2t57Q0gWENq7BPn+YjZKFWQ85
+T3Ojf5hmloe8mkggor86T7/MTwngZwzyHEwExhk/RJsci6kyP7Xu5w5if8b+AnmKqYXX8Nc
hgAAAABJRU5ErkJggg==
}

set ::icon_chooser::ImportedDates(view_rotate_yz.png) {2006-02-16 20:37:05}

image create photo ::icon_chooser::images::view_rotate_yz.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAABKUlEQVRIibWUu9GEIBCAl5t/
NrIFCnDMoQTLMaYC69jEMsiJ7cE29g9OHMSVQ+/8Isd9P1gACURkUbDHWltQU0odpIcfShCo
XEmmaRpO47yioOs6ICI2xpwHroJrLBkAgIi47/toUDZs23YTaq3Ze38vv8u5loxPeZWEv4eI
ONksXudcrg8RUyPw3rPWutyQdM3zbRWLRsT4ycYY8QFUz+ByWxXceidfplQ0lp6vJC9SFUHE
e88hBHDO7fSIaHO6LMvBLtcvsg6Zo1NEjDu5YxxHBgAuX8UTVucMADwMw8EBInLlVT7HWnvI
PB6tNXuRvFcs/AOAdwvmeYZpmhTAez7OOdFpCGHzkTq7teGfKO3pz4KkfH/PMx4/wn8VOnlV
l1qXV/BI3x/lH0HLe2sS+s34AAAAAElFTkSuQmCC
}

set ::icon_chooser::ImportedDates(line_divide_nearpoint.png) {2006-02-14 22:22:00}

image create photo ::icon_chooser::images::line_divide_nearpoint.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAAAy0lEQVRIibVVSRLDIAwTmT6N
ZztvUw+UZVwwJhCdkvEigTAAfZCDgC9XRAhAB8ZdqZJ89PzxLGFlabVCVYlIIadXbioo6+NT
PZZO6z/hqp/hFHOlfFT1pyNv6S0CAIgx9rW2Plj0ZdG6k+ME+Qy67PA5l7cxl+KewI+Pqey4
+8CNFWTDWuNYZ5SjnCXoBi3BdnNN0nyX66FeFXO3jE0lgRC00v40pVy//N034lzRa823htYq
Xm88uV72oZ2nEcspebxdp+b0Y+MQeBhf1+2eWrmiHtAAAAAASUVORK5CYII=
}

set ::icon_chooser::ImportedDates(view_rotate_xy.png) {2006-02-16 20:33:42}

image create photo ::icon_chooser::images::view_rotate_xy.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAABpklEQVRIia1V0Y2DMAx9Rvef
bkA2oBvABu0I3YARyAYdoSM0G1B1gWQDOkGVDd599MhBAwdU96RIgB0/P8cxQhI9MgDY7/cE
ABlaJHEzxqRuIBlXWZY8HA50zlFIQkRIUjBAFhlEKCIx1jju3A4AsNYyIXfOsSxLkoS8bGPi
ZY73jBKOXiRJXC4X3u931nVNklBKkWS64YcyJkcSRVHE59mc5jCf6wwShqlzSRi24DMNQ2it
2ae22+0IAI/Hg33XJSW9Xq/M8zyWMc9zvtxe75MaQgjx+XQ6YViEZIMxBiEEmSvzbIuvFr0E
ARCp17BkvdPHKS31VBQ9ZVx15ZYqtthLt9uNWmtorWMQ7z2zLMPz+URVVaPg3nuGEH6/T93Q
4eq6jkop1nVN5xyVUmyahn3bAWDbtuzHwfA2z46AqVUUBQGw6zq+25RSBMDz+ZzYNilo23Yy
UNM0o5k0XF9/HZj3ntZaeO/jGZCEMYbWWh6PRwGAqqqgtf77kIettLZp1yAOyXcl/0Uw/ltu
mAJrsXlabMXXksN7ubYqHCn47/IAH/x2tuIbRxn1sb7sz8QAAAAASUVORK5CYII=
}

set ::icon_chooser::ImportedDates(intersect_lines.png) {2004-11-18 21:53:33}

image create photo ::icon_chooser::images::intersect_lines.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAAA00lEQVRIidVUSxbEIAiLfXND
rzk9I7OotgpR0FUnm9YPEGMQoMgifGETyWQ9U9KbRH19qIgs8tTQJ+gWF/OvsYok1tnu8aOK
JnsCgFVtjsCpBfZwbO7t0Jy78YcELEp5JS1yWkmvCtriGdTqAHDcm1iVIWqFlkbc2+0mP4Bt
6OaOQMmXI+qC9txLzmHW28GQQM9m+siK8CekxnjPizYZNV3bI+XfMaivZxMs38oz/hhaiVpp
unGRaMR20Mx2kt4D0390J8uY9bPf6zMGUe9v98h/4AfAloBSdlQzlAAAAABJRU5ErkJggg==
}

set ::icon_chooser::ImportedDates(redraw.png) {2006-03-01 12:41:13}

image create photo ::icon_chooser::images::redraw.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAAB60lEQVRIibVVO27bQBB9Swsk
3KbTHVyxTArvIoJs6Ag+Q9QklU6gKpXvoCMYhmFgoSItK91BN4hAAtK4IB45u/xYluEBBHGX
s/PezLxZGhEBbQIAzjkBAKPfBItEu+Hn/18iIvj++04at9lhKcfFDlWeIS3K9shxsYP33qRF
iSrP6hfee3NaTQEAp9UUaVGGiNoSPswOS/nx577xmvDhuNgh1UdEpKFJqiICY60V773RCVV5
VoNzg8y2843psHLOydXTTYPLdDpsY+fX60dDOJ1FAB1H04H4rqkgI2sHWpVnqPIMzjkJ6nRa
TXH78iDkefvyIAAwuftWbxT7un5DP2utxHuDvRuySbwxOyyFFKs8w7+/z0EROmWNA3CP/8EB
3TCWl9XhOjigO+uck7QokRZl0BtjrR1tGunwXTAsQCsJGmVBpGDuXq8fTZx4WpRgLk0OV083
vcrUVLge1L1zTrimbeebVnx9ydKS9R7b+ab2+RIt9SmA9h67dwH01AKtGIC20rEYzgboC65v
JAIQhKbBOtNzSfC+wI2NNW2seef6BiUaYz2WKdD2g+XqneahAB9VEa8MQDX5UvZjfel8Dwmi
pdjHlmObrPdj+PDe93/a+KxnP1nvm4swvhNioy9wxhx8JIOLZfoZ+b4BTrFHl+7JOCMAAAAA
SUVORK5CYII=
}

set ::icon_chooser::ImportedDates(dimension_vertex.png) {2006-02-14 17:51:53}

image create photo ::icon_chooser::images::dimension_vertex.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAABh0lEQVRIieWTwYrqMBiFT4qI
EqV7i+3KhcVH8QVc+V6+gS8huFIEl4J2aUtBRFHRYE2ac1d34czcuXXGYeZyv2Xy55w/OX+A
ZyIAYDgcMgxDtFotpGmKxWJxV8S3Tr65+GeP5XLJOI7heR5c10UURcUki/s8GWMMASCKIm42
G1prGccxtdZUSvF4PP61t8LNs2jxtz3HJxEAMJvNaK1FrVZDkiQwxmC326Hf74vBYMBut4vx
eIxerycEAFwuF0opRRzHtNaiUqlgtVohDEMcDgcEQYDtdotGoyG+4VKj0ejhPB468Pz5cR6x
/5ncJa215vV6hZQSjuMIYwy11iAJx3FAEtVqVSilWCqVUC6XRZ7nPJ/PqNfruN1uyPMcACCl
FK8MptMpSaLZbCJNUyil4Ps+lFJwXRfr9Rq+72MymaDT6UBKif1+Dykl8jxHEASYz+fwPA9Z
lqHdbr8/qtZaaq3v0syyjEmS8HQ6FU76I/xbwgTAj/zBwuJfIfxb/NO8HCO+s/ef8gt7UtGN
6dk5qQAAAABJRU5ErkJggg==
}

set ::icon_chooser::ImportedDates(dimension_angle.png) {2006-02-14 17:36:29}

image create photo ::icon_chooser::images::dimension_angle.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAAAiUlEQVRIie1UWw6AIAzbvP+h
uNn8kQQmlT0wamK/YGylNBtEQZRSRMdOARhciCT/qPxuyVGEdAkqtLDB4pfDo1lcDwwxm6zW
SVdFffIxi4JmEjGJXm8TjTw5/yIyb2oNhDwzU5+Ar+ddxLUZae3vAccje4HJisglZo9NVtX2
apI8oniQz3DzY4gd4g0/1WrmChMAAAAASUVORK5CYII=
}

set ::icon_chooser::ImportedDates(border_horizontal.png) {2004-11-18 21:53:33}

image create photo ::icon_chooser::images::border_horizontal.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAAAmUlEQVRIid2VUQ6EIAxEH8aL
9P6HmqPgh7KRYt1lsySs78cgdIbSKnAiAUgCYCFE0vWySqBgZvsEkJ1SCiNCwohww/3mN7l3
UrwbG0/Judt6fMCERJXLkpJ7B0x5rFFbhmvXMvJJnjGzl+CEOcxPPtrq66cX9Hk3PdrDUd4q
fvgHPdygOaJfa1aDD37Fb2vkr6j/r8ETroXBbDcWUOsTTUNKAAAAAElFTkSuQmCC
}

set ::icon_chooser::ImportedDates(zoomout.png) {2022-08-08 17:13:22}

image create photo ::icon_chooser::images::zoomout.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAADVklEQVRIibWUX2hbZRjGf985
J2matkk7W8vMWKFbqWUdOsSiNxNhahHBIYogtsgqXiiCICi98Ga59rK9mb3QBUTEsZtqZ8uy
jMKcwy1ot3R2nWtZdFmT1Dbd2vw5eb04O2nSJI2V+cAHh/O9z/O8/85RIoINA+DyrRVZz+bR
AJLff8jafBBVHKYBBCMJAdAiwS9k+pcZ60pEEBGOnzwnmVxejp88JyJiUQAe29vJ8LezOJr3
bDKunT0hNtM+JY7FKEiNX5yTrLkZpQH4AyFp8O5i+vckc7F7UigLYHImTtYU9nuzdPUftBif
vtiMa+MOTdkY7/UfVFbkyIBM/PDdv8+qGrStL+KpjCwm1uVW3Dp//p0WfyBUUDWKg/2BkDS1
dTBw7Agy/C4Oj5vGyzd4/K1hKhKeXR1jsf0TTn8dJLVuYujgO+BiNnId+nZbQXbL07GwXDt7
omKhxafwUCvw4XVpxwR/ICRZUyRrioxfnCtpKVCakj8QkqFXniGTy1tqCtxOndYmp6pImIvd
k7urmQJBKfC4DManw3z29nMKtswhvLDKb7dTfPDHNzi8DTgaXYy1vFyScglhORnH7XTz+Z43
yItQZ2h01uukKtUwNTooFzxD9PZ0E13eIGdCU72OSq9w7IVeVeIwNTooh1//GN/VSywuJViO
PwJACuhrTQC9mxaTIwOSjoUlHQvL5MhAzWkbZudR5q9eIho5z5H3v1LUwk726D/t0k5h1A6x
sHWlbNgLUA3bVuAPhOTJ/bt5/tA+zPyDsm0ioJRC1xTBK/OEb/xV0ayqgT8Qkp6Odg5172Uj
mydnCnkR7HClQFMKQ1e4HBpXri8SWYiVmWzboq4OH9FkmvsZk6feeZU6A/RmD7rXg+5tRGts
wGxp4ac3P6Krw0dkIVamsa3BzaX7RJfXSaxleSJ6B81QmCtr6N7VglFOc/Lr7RV8LfUVNaoa
9LUm+DkyS29PN4am8eXYj6Rzecy81SNdU9QZGs1uBz6vk5nI7IOvphRlM5gaHRRfz2EAopHz
XPAMAdDeuou2tkfJmdavxNA1lpbuEosnCwm91P9a9SHbwvsOPF24LP4Cz0ycqrgNlUTLDLaK
28Jm59GaArVQqODMxCnRb54GeCjCZQb/F/4Bp/A4NGpARS8AAAAASUVORK5CYII=
}

set ::icon_chooser::ImportedDates(surface_hole.png) {2004-11-18 21:53:33}

image create photo ::icon_chooser::images::surface_hole.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAABQUlEQVRIia1VSRLDIAyTOzmU
/z+W3NRDjLHBZJuqF2iMJW8AzKgkyb4nuDDpX2qyIdjWEk4ThNSEGeZiYpwVBA4A0qQ2IQIB
BLL19c61d3N3okqyryYooAAANue8QyrIb9/KfnAIMgJamEddagh7mw9I80OBTNGexDAIPbdU
8xu1usSCaEwpoGmVwcg1g2VmzpLWvjherQNnGR9vFIzb37JfROWKZtPi0psHrQYEezfoYl2O
sW31wCc1TpGlejQIKb6u+mjw+ACAWz34GGEUk/nxSBLjOyiDLLfO2ZkTdzf6jgPaVVHUpgjg
7xi9dNJM+vZNvls7J8IaQY/EVjUMVXMyqu7hFBPT1HuCBGqk91knqoHI0vIfcL5Pxt/QGA9G
7dAbHsAbyh8S3AALfBQvB43H654+5yEqeUMQJvXF+f/iB7Ah2w5FMQlOAAAAAElFTkSuQmCC

}

set ::icon_chooser::ImportedDates(intersect_surfaces.png) {2004-11-18 21:53:33}

image create photo ::icon_chooser::images::intersect_surfaces.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAABR0lEQVRIib1VyxLDIAhcnPz/
L28PCbIgiW2nUw6tgrzWxQAAcYkBAEGabwCQcUBWImTaEKQoCQAj4pkVj8dwa9YRpwgvOC9k
Hf+xSeG8VN4lr0Wk5tTIWzuLghOltb2jpnT4DTYh9DvCpaM3kjP1zcyLLWvJ5YaZ8S2puD4f
UBln4idasEPJBAlvyAExKEoX6bQhMpqdag24h1LrG7o5fyodV2qwo0YwMttG8qv5G3QNcrOu
IqhcSiLkmwf4EQdKUT4XO/SylzpID9hVwna5YbEpE3KW6ngyqF5Z+OnTFr6mjoq8BvI211Jt
2UScROk6/bnyzha63s/tR2uLQ7Bzwpra84RqUPnG6MDNttRhgaWZXNUutSiL4MNyNwW5ypqg
92nfFTV4wvp0a8J3Ht2niUq28pHZXvaXYy6fV+gM9HfwC+ln9R/yAhfEA5wGGHAZAAAAAElF
TkSuQmCC
}

set ::icon_chooser::ImportedDates(align_quadratic_nodes.png) {2007-05-03 21:01:46}

image create photo ::icon_chooser::images::align_quadratic_nodes.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAAA00lEQVRIidVV2w3DIAy8PNbo
HB2i02SSTNMVOkelzlFdPxJoa2wwIVLTk1AkcxzmcAyQglSCJq63h8GfB3591ckGCIk+ZnS+
K4TihjtkBKlgHHwemNhW55J2R5pqRsQ6bbsLu0K1tFeIwQAZM3Q1Vz5io9iVmLoun2maSlBj
FHGQ3wvM2y/k7puw4sYPfbCy+CEW48KwEOfHDEmKAlj61wUnu9oCd3o6K3LtOUCuXadcnzBI
gHrraRbXs6YYIUz/41VjSXXm6wKX8PHEy7W9lfvneAHjnZyUapq13wAAAABJRU5ErkJggg==
}

set ::icon_chooser::ImportedDates(view_labels.png) {2006-02-15 23:50:41}

image create photo ::icon_chooser::images::view_labels.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAADIUlEQVRIia1VPUibURQ9UWnx
jyBxCKRa8qlIQEUEIVCog3+lcYmiFZGKCpIo/mSQxMFBcNBOXdsKCgrFmi2p1EFMUKODEFxc
GhCqVBRDEkw0nyE9HayJaWLzWTzjvefce9599/GAP3C5XAQAhEIh4i683h+JAQCATveNAJAx
MjLCgQERAJJpw8PDicHe3rcMh5nMPDu75MxMigQArK+vxxIZdxNFRUXJ7M1NkvyVWGpvTyQA
+P1kSqsm0wqbmpp4cnJykwwGg+zvJ3d27nH1N9rb21lcXCyNDIA1NTVcWVlJLTg8PGRpaSmr
qgz0esmentQ2YvNoaWnE5uZ3VFdfQqGQyTSad5icnLoVMSsrK721y8v4eLRabbJAr9fTYDBI
PmQCwuEwrVardLFKpSIA1NfXSxep1Wpp5MXFRWZmZnJtbY3b29v3i/x+PwFgevonP3zY+Xf1
8fFxAuDk5M2FOZ2S9ic7RmppuRHYbDbu7u4mbr7FYuHo6CfK5XGp3V4KAIhEIjg9PcXU1M2t
ZwBAZWUldLrnCASuZLcCs/k13G6ytbUVLpcLNpstvcFXrwzU6/X0+/1cWFhIPpPP56XHQzY0
kFartEfzf3uUDhaLhYIg0Gw2U6VScX5+/nEbBQIBiqJIj8dDpVJJk8n0OA1EUWQoFKLH46Eg
CJyYmEhbOCMd4S6WlpaQm5uL2tpadHV1IRqNwmg0/t+I3G438/PzaTINcX+fHBoiRZHs6yMl
rn1qnJ+fc3n5Czc27MzLy6RW20ufL15wf580Gsmrq3js+vqaXq+XkUgkqXHSiAoLC2VKZTs+
f25EMPgEFRVRFBTIYi+kvBw4OgJEMa6x2+1QKBRwOByYnZ2lw+FI/SvpdDoC4OqqBR8/PpU1
N79ESYkmwcDgYD/sdhkGBt7EYm63G4IgQC6Xw2w2w+l0Sp7YvQgEyLGx9xSEZ6yrq+PW1hbn
5uYIgG1tbQyHwwQAWZo6SVheJjc2gJwcIDv7K6LRNVRXv0BnZ+fDanV3dxMANRoTOzrIvT3y
6Ii8uHjYBt3b9eDggMfHx1Cr1SgrK3vwSW/xG8qzrh15KBcUAAAAAElFTkSuQmCC
}

set ::icon_chooser::ImportedDates(view_swap_render.png) {2008-11-03 21:44:46}

image create photo ::icon_chooser::images::view_swap_render.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAAC30lEQVRIicWUQWgUZxiGn38M
/P6zG2WboKhl1ppYw0ZpKXgpeBBvpgoKOYi3UDx48eKllwaEgHuQEuilvfXQ4sUei8JCS8HG
oCAemuJFqZIKghDCn1nDbPb1MJt11pldIwT6whxm5vve9/u/7/1+yMAASBL/QQBgjDHhg5Be
3LiRSJLm/pwTAG6/U6hQ3YjvwgUtDq+oJ+3cuUTxiViS5BInl83YhJty+Y+FaDQaGhnxvdHJ
bFqaJLnJDNXZ4RVJko2sQoWyM/btTxtZuYtOLnGyke2ltJGV+2lwVX1/BtmXH0b8Zm1Ikv/Y
60h5VdeuJTkC+T3d4B64SadQJTmlJZl3M3fv9rr3WcAXr0ZgBjgPRGCCANHOJ2QPGnwUwFfA
BWACmjuafeMBuPnPzXzLtgMDGXvaGkWxGlcbLO9b1ljZq17PtzMT7JVcemsSLUvPR7327vX5
pGo1lh8rnoMWlDu4FliQ/i2Od5NOTgUG27XL63HJS48ywc/T/chOunvo1dWy+et7y9Q3TVp3
WoRfh/A30FKncQa34VQ4OVdy4ihwBpgGxlNrxGbNBEUJzbWm4SnwsPM0YaPays+hpxNnBUvA
A2jX2qw/Wx/sI0gNeOX2le330nZAgCoVr0rFa35+gMW2iijy+rG8oqSe9DqlIcWHYv1xOdH4
+Hv83I94fl7yw156WezGTSQ/J4rHY926kMhGVnN35/qKCdDs7KL8mFfybTKYucj+mRWo360X
C42aRZ0ureppyev1l6+lx4OJbWTlNtJlCVVSqFBOTtO/THd3ra/3pqZiLS21+e1gwIGHLYY+
H8L97gDYWd1JcD2ASeAToAQEBoMBhDp3VLs64FLN4tSpWE8mTvLi/iPMmklJJ0gFasAYUMmL
bFlgE3bGKvg1gNFO5Z8CRztCh0m/D6UiG9UW68/WzQcJdIUiq4AAqh2RGnAMOALtE1tc+/eh
Vq+lQz6eOqd8ufz/XBFvAPs/PwV90e+BAAAAAElFTkSuQmCC
}

set ::icon_chooser::ImportedDates(view_higherentity_lines.png) {2006-02-16 13:23:38}

image create photo ::icon_chooser::images::view_higherentity_lines.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAACkUlEQVRIidWVS0gbURSGz1iN
T8QuJDGKhJAYqYg7wS6k0gelCnap1EoXLkLdq9BVpRBw06CkuxJaNEVdlbZUQXSlGxGkWKOg
YEBrkk0f1EjVzNfFFafJJFXElvbAcGfu/Oc/jzn/HZF0wz8CzwX1EBnHhNBERABkcFCEgQHQ
dTNMRISqKuMFVisAvBSAVA9crswUvzUKC81e3LsPR99VrJGR40p0HTaDkDyA6urjTa8XopMK
6XRnoCorO0dWp2Ydj0NpKSeWKxAOZwjf0gKTT2D2FiR/wNRVw8nhQEQkl0QCcThEYjHlFXkl
orlFciwilTYR1xXRNsOamX11Fex2gzE//w8U+3eNQABqayEUSqklJyO4qQnxeETCYZHiLcFq
y94AyquNTs1ch8gEx2OcNsmxGJRehjcW9dGmm+EoocAdHRCN/qIJvx+6ugzmFwKrw+q+szMN
3NoKy8sGeNSi1i9LcLsC4vG0VNbXQWnVAAN0d8POrqnYHM3j0TQRTdxukd0htbuwINLQIFpl
hXmGUqKFw2CzwdDQfz9HZzC2t6G9HVZWLrZc/H4oKYG+PtjfV6sIeHthbe18wYhGob4eGhth
bs4YhaMErA3D23JYn4RHj6GoCPr7IZk8PRhPh+GSwN1KONxLJZ5uhveN8PUjKeb1gssFY2NZ
/hvRKNTUQF0dzM8rp88fYPYOvK5T11wb6AcGqa4rfTkcZiWcEPt8UFwMPT2YLDIOoSLYeQef
piAoMHMNEjGlRaczVY8pxHt76ky322Fx0Uw8aoGtkDnowwdQ74Rtsxyz93xiAqw2uHkDnlXA
tykzcW8vFBRkz/hMgXQd+vohLw/a2mBjA5aW1Hj6fBc894eHEAhAMPhvnh8/AWAauyyMzUGb
AAAAAElFTkSuQmCC
}

set ::icon_chooser::ImportedDates(dimension_edit.png) {2004-11-18 21:53:33}

image create photo ::icon_chooser::images::dimension_edit.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAAArElEQVRIidVVQRLEIAhLOv7/
y9lDxxmqoFLXQ3NDCUEBpSRUXDB4GLRuACAAknS7SWLnRlLuRqgyVOwYJEVS3UY+1H5W6Uj/
J9i7GKFYg0RAIoC7sulDn7+l0i60h6+NFxI8p2lKteWqmlVdUrD2fmt4+S9NRITyjDAv4vlK
pxWySGd0RGB1eF8L7OD7Au5weojqMHoqAKdN7e+Xhce9WodRtrPgHvd4Db4/yT/1rmI9wwVW
BgAAAABJRU5ErkJggg==
}

set ::icon_chooser::ImportedDates(dimension_delete.png) {2004-11-18 21:53:33}

image create photo ::icon_chooser::images::dimension_delete.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAACNUlEQVRIia2UP2gTcRTHvxdM
wUXECFkydBEkUOe6CBYqpCAiEnAJ1MmhEEEiTqHoJnXI4lAEhwhVsEMcMhRSODQQnNRgHAoh
SChYSCWGWkpu+Dhc/txdLpeU9MEPkvfe9733e9/v/SSvEUsgSYYk8eYj2t71pJRKJUZwwwLR
5YCoJBZXCXTw4FlwBTc6sjTIpnfESnrwW6Zp2s6C6ap7TpJotTEuXzSCexyfDJHOhmMBvS0O
/pdKJRpaGAESTw4H7Vt/YGcSmRyuMZyXcCXX6qjzT8b1awblb2NHJSyLvLJIuM7Qr9HRgoy/
R6fgzYX8fQiVaiCa3Bbs/XLwUCzD9z1fEJWqf8H7ugS1unu9rTYpRejpGkkK9YPv9Uf68kM0
D2wRdS20vqm3Opxwp408tNp41e0l1w26cANabV9AaCQ5lsDofDK0vqmJ0iCexPj5wZAk49VT
g84RdC2MubBL+0iiqPSILCQoKk1YllsWbOR9lTmI33zo+d49F/QFvdvxgHr7n9XY3h3ZsB3Y
qUB0eaIOxxYumBBZgsb+hPevYNqNPDIcm9/Yt/OL5clrc56UIjS1wLzm8MYkcV4hKrpKRlHf
+DTD2V1zW3DlLk6OSGVhJQ1d60x4s4s+f23vOJ70J3Gm4pUqxBJQq9uv7eJqoK6nL9w8gPnb
vgSSysKttakbucjh+MSeMpMLfjq7Ftx7AnceO/nwJXrgZO3FqQmka9mYVHa8kvj8dWYCBzd/
9PJsRRBk/wFUI8b8K/Uy0QAAAABJRU5ErkJggg==
}

set ::icon_chooser::ImportedDates(line_divide_nparts.png) {2006-02-14 22:32:48}

image create photo ::icon_chooser::images::line_divide_nparts.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAAAmUlEQVRIic1UWw7AIAhDs/tf
mX0smYvyaNUt659SKhSiiAP1AgZVPX5/qbAqRFSNJIkOPgNugIjdges1rW698EfPQNxbGC5F
JgAHhrvaAmXidayUZfKVIc6ka0aYxXbBfWCH9WwDyq1xOP7EGocGkxRz+zYZCyBuYlGqX4BC
hsQ3PEcFeHF2BvSaHvMFWd2U4bD8K3agO1zGCYQ1RtbF104kAAAAAElFTkSuQmCC
}

set ::icon_chooser::ImportedDates(AverageResult.png) {2017-05-30 10:08:04}

image create photo ::icon_chooser::images::AverageResult.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAABXElEQVRIidVUy3HFIAxcZVxK
qsAl5J4SeNf0kQsu5uEKkgpyCvSyOcgQwMafzOTwNKMxHkloVywISSQb9BMp4x1YIiQJKdOe
UJj+zDcCqNPWWQDiNGrmbdZMklUnGLfuuLlVNyAyMiGqAtZ/1CWpOUkYF5jBJERBFzlQoRKR
bYhaIcDORA5ZZIsT87QSux4JkrAAsbhyquNNgWcaORkI2FXBZQ6XC4Zfcscj/VOHrmpOF0yj
cIpQ9Yow6ogrfLWgCt14uz6LFQcRYdZNsU42VNmYMxTAoE1eQQrO0HqFgAJaVxp20T9JOAN6
7mnJWxVd0tLyH5qi/9fSVbusjEdrEDmNQpGOF09L17a0UnugM3r67Yl7CwJm8ylKfjyi+R1v
n4B5fcEzUCg98vvrsPqIwYIethZ5oemW1cGj2njaSO/f6bGcbJDQN5sFR3MS/X6DnTEoC+SH
Zc8f/yb/AGTtu59dOo25AAAAAElFTkSuQmCC
}

set ::icon_chooser::ImportedDates(send_to_back.png) {2004-11-30 20:20:29}

image create photo ::icon_chooser::images::send_to_back.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAACkklEQVRIie2VS0hUcRTGf+dq
NDo+kmCMjLJcZIWBNFGBLaIHQcFsatMieqyiloXQrsJNRUKrFgUVIS1q0yJGggx62MakIg0U
NWN6OaU5jk3hzNdinKtzZ1KDFgV9cLn3nnu+8/3P/3/OueBFcE+jwFH6zReQJI+LJOx8WJJw
AGhrA8AyXwHMTJJsiucLCH+VCJ0WvoAAb+Q5IEvDNZpNrgRo7f2gghNXXI9CACtZIt+RU+hF
D1ayRJlISOLoo27ZsoY8qf4xSHKvhsPNssPNAkfT7cBUFgC1e8/o2NVWPQYUjWFNN3E2HJKZ
k7vQTBRf5UpdfvletqNRtmJbjoJNJwBYUaUKFq8llUygLxE02uf6mJlX56/B9MQkucXqTTgv
AV9A4Z737rHPSMAXUGIsobqWdvlvt2eRMijMPFhRpdp7nlNz6QGRjm6cqlKKL5zDqd6s1MBD
dz+djDPz/GyqDTLS0Z0OsKiM+IF9KNqfKdX8ObRHEwpeDKvsdlhYQc6SsmoJoN6Xvsdej+bd
0UKvoXT5eiaKyzPSeUn/8Rvw1qe3JOtC6ab1joaZ6jrn1LywokoFdx8kER3k7NN+ut5uIdW2
C6dmu9R3Hyk5Y5f/UsANHB+k890w6+908urZK1KRGLZuFRX7dzJyPYxTvVl68+SXQllGSemR
NN9P+cIaYskEEyUVOFtDJIdi2HgMAba6Fjo6INIFY8Mw/hWNf4H4O6SUTR9dORno28csUTPT
nuMnGQ8s4F7rYxJDMUqDZcRudaHeuyg1MeMW5bSaFwXly7m2t57Q0gWENq7BPn+YjZKFWQ85
+T3Ojf5hmloe8mkggor86T7/MTwngZwzyHEwExhk/RJsci6kyP7Xu5w5if8b+AnmKqYXX8Nc
hgAAAABJRU5ErkJggg==
}

set ::icon_chooser::ImportedDates(PantallaResize.png) {2010-02-12 13:01:02}

image create photo ::icon_chooser::images::PantallaResize.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAAAv0lEQVRIie2Vyw3DIBBEZ1FK
icT24gbSR64+ck0facC9GMm9kIOFRUhYfsGnvAsWjJmd1UoAKQgA2Fg3XZMaL7s/rZNEu6rs
whzERjCLD9lYd5iHZS4boHrqqESsOoDiDaljTSHOTD0MNtb5lubWjx+a3HIaYmPdOuuv0xbz
uGlSobgEVVv/eIc/hXSNn3Bn22Elx1OQmqces3XWdPEfkrDl2Vi2fVXAb1sSo4B8gm6DkQne
KvdGPlGv8cjOnMcLnsdmx7H/DnIAAAAASUVORK5CYII=
}

set ::icon_chooser::ImportedDates(collapse_edges.png) {2006-01-31 15:41:36}

image create photo ::icon_chooser::images::collapse_edges.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAAAyElEQVRIieVVQRLCMAhckj5Y
X1IfrLMe2tRAILbVeqh7yiwECBAALEgSAFIj8UBwhubHrAhpyOtDAJhbX8CYaZ13XjJmLvGb
WwehTZWGCrYoB5cIlNQGSiIilktWWW7D6vDOAadJuvB7fBKVw6twteWOl7Bwpmgsuim0qDlR
h6iifmv0svKbD/JnmCfQMcmtxtsKJ8SmgWyM75iji8N2QneM8HKP5OELBo+MUM/Dd6o+bdaK
Tc9nK8fJe91Fe+vRruitmFb6ifEEkVrhgML/iqwAAAAASUVORK5CYII=
}

set ::icon_chooser::ImportedDates(boundaries.png) {2022-08-08 19:44:43}

image create photo ::icon_chooser::images::boundaries.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAAAqUlEQVRIie1Uyw7DIAyzUf//
l73LUkEglLB1k6b5BCGO8xChJBiKHUiq2AEAuOHWeXkjABz1xSCJw1CnumcAQBkZm3y7JAB0
DEnsGJIIuAIjvS4SSc2cLTrwbIgZSap+HKmG1UVoCD766C0cRYQ04agvK53aU1idwZbCa3O4
hfALbU0Tsoi3w8X3XuWlx5ZFs493AlzxPlfBXyAtMNvgM3je7RV87ye/Cw8VUWs/1MBhugAA
AABJRU5ErkJggg==
}

set ::icon_chooser::ImportedDates(pan.png) {2006-03-01 12:27:08}

image create photo ::icon_chooser::images::pan.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAABiUlEQVRIia2VsW3DMBRE3ze8
RwK4dJPyG8gK6gNoBQ/gPo3LFAE8gSbwEirVpFThSS6FSJuSKZtOfBVBft7dJ4+S1VywiIMK
tAToQIBRA0OphpUKBGYLgCMYgKVsADvQHmyRTnagjzA2kGrMJhuvqSKWmTn17ow0qmB81bYX
8R0oWj33Gy2OxB92NUWDdHNDMMga2E895bAGPoGfe5Z24XjfJk1dKVSgLnQ/V3ze0CB9uc+y
3rQ0hyYc82zT02KA3l25EJxxAh0GI9a7a9W2lrU0uQNIessqHMFOoG1mLdvDCfQSxt1k7cpS
Unz74kqKRxtKikcbtgXFACZJZpB7LFkFM3DflNQOCqVZKkGDJHH2WmN2M0qlSCNnNuTUfUOP
6+EO3kENcJjMzz3qhwRi5lPk8p+i6HlGHMG+A+kxzP1wHf8/CZxAuxDm8Aspit3dI4oXuGdw
WvKZSzHbQc7xo+RZgVczVU8gjrCayzc2PucO9B/SkQCBPMJ9w6ptn0IOySX37gKeSg7wC5Hs
gogKU2U0AAAAAElFTkSuQmCC
}

set ::icon_chooser::ImportedDates(bring_to_front.png) {2004-11-30 18:57:31}

image create photo ::icon_chooser::images::bring_to_front.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAACbUlEQVRIieWUQUjTYRjGf9/m
cqNm2UENLUrrYGAEiXZJCuwU1nEjoksdkqC6BV662KVLYUIXQYwCy4tRwUZCgoIaSoTUIDEr
ktVBnFvLkbinw9z8//efYoQg9Ny+7/2e932f932/FxzwlklS7mg75K6g6WrGIondA5HVZ5LA
WyaXv1KSkIQLwBijlvZO0k0XMOfv5Xv9G0jCXXpA+ckiidBkVKa6OWcoAjjR1qfhZBwaz+Cq
OS3A5Bip5ZSNsQnIVgJvmQIdIdV3hHIhczbIVMoKl8fDNDAefg0+n8OxjWCM0a/YNNHfcSip
wH+nLat27ZRWQjvS2cRq/CsMYMvP+Mrl9ZeSSswDoMUfBsAYs8qyCgtNRVV/+6mau0fEypRb
HRblhzy5p5RoMXwsXiiYkoMAMPs1jnsNDbnG+RqDCt4PqzX8FqanSFMC17rwNQZljJGDsDjW
a5496iZwZD+UVGSMsQSpN0+QZKxRbKK9DQHdHIjIdfFuQdEOQpZkfbyFx2JLwtaOQsUzvnK1
tHdy7ngdVTt3ARBPQfDyDdLvCrQU+1wXnLx89F05y63RGa6/GiI5PoH71DGUmNuQAsdOWg9u
P5D4yfbavbDNua8KwabA+MoFmcWXXloCtwfcHh6MztA/9oXktzhUHiQRWUA1h+HzGGZHlVwu
Vt8vL4Gl9AV7YIyRtyFA/+Meng8P0j8HsxMRiH/PKNl3iHRNFf7anSRfvCcd7kWfBnL9sPZg
3SZnA8VGehj8MM+l8BAAi0friD0MoeGXNscWXuF65X9R6xb3NgQUmozK3dolU93s+LprfeMN
TZFFuqzn/wN/AHvDlGP59ABnAAAAAElFTkSuQmCC
}

set ::icon_chooser::ImportedDates(user_open.png) {2006-02-13 20:59:36}

image create photo ::icon_chooser::images::user_open.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAAD/ElEQVRIib2We1BUZRjGf2dZ
Fpd1IVEZsqItwLBMNBtwyqmwcdTRamTIGXJyMmfApmzSP2pkpitdZLqSF1D/aBoThXIpywk1
zVpwCrEClRmjvAyIFMKyu+yye/ac8/YHwQAbt6np+eub87zfeZ7nO+9554PhkOPPCoAC8OWc
GfLrI4uHl5yvlP61qa70OwCaXdv7HtYfeEYOvoQM3mECmH3ZxayWZKocsQOkMrgqNTVNDu7e
QDioRtgaitp375SanZkSQUhtoUiwayhRX1Qkl9bdILUPTh9CKABfZ90iMY65VE2NpyAng3i7
rc/ush8vKosqqhRzuANb7CT2Vl8Yw9VoOPXhPJGmHaK5NsvejaZI53/D3L9Qj1pourWb5mOX
SDiWiBhtophMyvANCsCJJemSkq6hBjR8nSrd7UFWnXKzquBpCtbnk5KSSq3rW8L+TiLe0I/2
9quypfBJ8h9fBoCh6UyOsYyeq+aoU5zlZeJwOEbM9N9jIMMnG02SPCON2Ljz3F0wcrYBSMM7
ImdKpPy5WAmHfGN/B9ytEBVD3v1LUWLsoyt0NzZK5RyHNH+6SQ6lWqWxeMuICgpA8L25oofC
dDR7cHfpuNtD3P7WAZKysyOUTACdrX46rgTpVRWCfp28nzxUFb9OZtYCaWltkc0vFsoh50eS
m/OwmACU5WVcvHw9v/8Swu1PYsMT68jevpW0G2NxN1Ww/iEHjileUh03jXx8zq++kKykDjy+
ACigqzp7D//WZ+mfcKW1rc+zScFsQFL6Yup/PjfyyTkcDunpvCg7S978H/sIIjOrAY+crHiK
zguHibZYMceYmWRPZv7KXcQnpY/dYmMJfP7yTFnxwAqirksEReFs3TGudh4hFFJY8kI3Fmv8
hEQiiuV0sSAqWGxgaBDwgO8PzvgszMnd8e8TiNojRkUepmkJgAkMH12tNuyPbcNiH+MfGU2g
99o1OZd/H/NzJ3NiZxuNGWuRP9uYee4AN8+y0ePV8Hao2O9ZzYKt28YtNFBYu3qpzJ7VghYW
dNVADer0+sOoPo2AVyPk1wj4NMJ+Hetdy1lUvn+ISFlZmdjj7LhcJykr3a5ECNStWSXuhiPc
dm8CatBAV3XCvYLaqxMKhOnt0fk4lEj+7l0szFqI64daWlrb8HZdo+bEcabEGmTekUTi9KnM
z0jDaonm7T2nxzHZBmFlTo7s37eP8s8qafhmD689v4aOLi9qWAdARBARDE0nzmal1Hl20MAb
B6qcTqX6cHXfRcFkxucPElK1AV50AzEExYA4m5Vos3liAgCvvlLEByXv0xRtJsocRUK8Da8n
gDJtHp5uD5sK3wCB72tOTrjjhiDv0ZWSv3b1mHPnL5OnxqvZyL/nAAAAAElFTkSuQmCC
}

set ::icon_chooser::ImportedDates(send_to_back_opposite.png) {2004-11-30 20:24:54}

image create photo ::icon_chooser::images::send_to_back_opposite.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAACMklEQVRIidWUP2hTURSHv/NS
n6ZtYoU+kJQWBSkYgqJZBOsgimulBSUOHeysuAh1FALOCXUTawZFRKkOiuiriwShNiBFKw4J
pTX+IZpUmsZYmh6HJlry0jQiGfpt797fuefcc373QTXB0IgiogLQDepQACCjtgLIxpJ1GwaA
uC0Vt0/pD4NpKXUi/4cHyay6roxVJ/fpuRuPWE18AI9vrXZwXnG+vN5E+i5GVYajioijAcb6
j95QWC/EbI0vAd8+IeGbyKHzCs7AP7g7e3UsmVU5NaLSc9IhdN7OtNS1+yCrFNHcR1icbXYH
msOapxpDTEvtZFalp2/zIDF9qqoaiCXUPW7XDPo7ONPSqS8v6bo+wduncYqT8+yIRKgOMipi
2d5GsOsYufgMArR0eSkODUImhbh9G5eXyKoGR231jNuKuGpPut77rFDxvGPs2zoDutLaAYDO
xQHdmtbYEpiWBvorj7bOC/9XxLQ0GBpRVdXwi4S6YrbKcLScyOkbR3y9ioODw0zducZEKsWl
6QXeT8YpzYIc9dPh38vC7cfw/B469woo1TzLsSimpUZrG17vPvIUWfHswjgxwGomDYWyyL8f
Eq8h/Q4Wc1BYgKUs+vMz1T5txLR6Npag0A3PHk6znEnTfuYI+csRNPkEtHblFYx6mwAuzx7u
Dh1mYGcHp48fgO954EcDda3Rspmg9GuJW6kcV++/4etsGtzt5GeA5VxDCRpqEVItM8q/l1Kj
Z2xhfgOGOd5NqKABcQAAAABJRU5ErkJggg==
}

set ::icon_chooser::ImportedDates(bring_to_front.png) {2004-11-30 20:21:40}

image create photo ::icon_chooser::images::bring_to_front.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAACbUlEQVRIieWUQUjTYRjGf9/m
cqNm2UENLUrrYGAEiXZJCuwU1nEjoksdkqC6BV662KVLYUIXQYwCy4tRwUZCgoIaSoTUIDEr
ktVBnFvLkbinw9z8//efYoQg9Ny+7/2e932f932/FxzwlklS7mg75K6g6WrGIondA5HVZ5LA
WyaXv1KSkIQLwBijlvZO0k0XMOfv5Xv9G0jCXXpA+ckiidBkVKa6OWcoAjjR1qfhZBwaz+Cq
OS3A5Bip5ZSNsQnIVgJvmQIdIdV3hHIhczbIVMoKl8fDNDAefg0+n8OxjWCM0a/YNNHfcSip
wH+nLat27ZRWQjvS2cRq/CsMYMvP+Mrl9ZeSSswDoMUfBsAYs8qyCgtNRVV/+6mau0fEypRb
HRblhzy5p5RoMXwsXiiYkoMAMPs1jnsNDbnG+RqDCt4PqzX8FqanSFMC17rwNQZljJGDsDjW
a5496iZwZD+UVGSMsQSpN0+QZKxRbKK9DQHdHIjIdfFuQdEOQpZkfbyFx2JLwtaOQsUzvnK1
tHdy7ngdVTt3ARBPQfDyDdLvCrQU+1wXnLx89F05y63RGa6/GiI5PoH71DGUmNuQAsdOWg9u
P5D4yfbavbDNua8KwabA+MoFmcWXXloCtwfcHh6MztA/9oXktzhUHiQRWUA1h+HzGGZHlVwu
Vt8vL4Gl9AV7YIyRtyFA/+Meng8P0j8HsxMRiH/PKNl3iHRNFf7anSRfvCcd7kWfBnL9sPZg
3SZnA8VGehj8MM+l8BAAi0friD0MoeGXNscWXuF65X9R6xb3NgQUmozK3dolU93s+LprfeMN
TZFFuqzn/wN/AHvDlGP59ABnAAAAAElFTkSuQmCC
}

set ::icon_chooser::ImportedDates(send_to_back_opposite.png) {2004-11-18 21:53:33}

image create photo ::icon_chooser::images::send_to_back_opposite.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAACMklEQVRIidWUP2hTURSHv/NS
n6ZtYoU+kJQWBSkYgqJZBOsgimulBSUOHeysuAh1FALOCXUTawZFRKkOiuiriwShNiBFKw4J
pTX+IZpUmsZYmh6HJlry0jQiGfpt797fuefcc373QTXB0IgiogLQDepQACCjtgLIxpJ1GwaA
uC0Vt0/pD4NpKXUi/4cHyay6roxVJ/fpuRuPWE18AI9vrXZwXnG+vN5E+i5GVYajioijAcb6
j95QWC/EbI0vAd8+IeGbyKHzCs7AP7g7e3UsmVU5NaLSc9IhdN7OtNS1+yCrFNHcR1icbXYH
msOapxpDTEvtZFalp2/zIDF9qqoaiCXUPW7XDPo7ONPSqS8v6bo+wduncYqT8+yIRKgOMipi
2d5GsOsYufgMArR0eSkODUImhbh9G5eXyKoGR231jNuKuGpPut77rFDxvGPs2zoDutLaAYDO
xQHdmtbYEpiWBvorj7bOC/9XxLQ0GBpRVdXwi4S6YrbKcLScyOkbR3y9ioODw0zducZEKsWl
6QXeT8YpzYIc9dPh38vC7cfw/B469woo1TzLsSimpUZrG17vPvIUWfHswjgxwGomDYWyyL8f
Eq8h/Q4Wc1BYgKUs+vMz1T5txLR6Npag0A3PHk6znEnTfuYI+csRNPkEtHblFYx6mwAuzx7u
Dh1mYGcHp48fgO954EcDda3Rspmg9GuJW6kcV++/4etsGtzt5GeA5VxDCRpqEVItM8q/l1Kj
Z2xhfgOGOd5NqKABcQAAAABJRU5ErkJggg==
}

set ::icon_chooser::ImportedDates(viewprev.png) {2006-03-01 12:30:27}

image create photo ::icon_chooser::images::viewprev.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAACqklEQVRIiaWUy2sTURTGf3eS
PmwwFiPYh6UUzaIgiouKKHQh4sq2gbrxP7C4dOWiWXTRbtqlzR8gbkpCRoRCpbgQNH0spKVF
SsSSPmNJy1jpI22T4yKdYZJM0gQ/uAx37nfOmXO/74wSEUxo2OAGmF1el/paDVWethDflOOT
bI6mlBIRUXaWBhAe7qUQVuJ308uyb+wC4G305VfMS6WUcjwpHWHfREb6JDLSJ1bE+8kZab/R
zKev33n66B6Jje1cxEoiydKawdBAQC2tGawkksU1Cpst2pe6kVLQAGLRUcdD+8dbEBFEhFh0
VESEialZMQxDBsejIiIMjkdlJ7UnE1OzIiL5PXz8FpfFhMFh+oy2aw1sra/S0tbBeuqQhjo3
d9obcxKb6HnoV/MLuriAl88CCu4CEAzpkj6CnhddqqQSZZs2Uaivk94VVbBfu1Yqkx0iokxO
9T04inOOGX2s6L0G0NrZ7ZjtQeB1sV1MpcPDvTI4HhXDMCxVTeV3UnuW8lYPwZAu/U+6+Ht0
Ro1L42diE4Bb7a2cZrJcvuQmMj2fr3RsJWWzgQ+A6cWkZRUouKW34S/iqr+Cp95NPB4HwO/3
c3B8Rub4D6+edxdbIxjSBWBoIKCc9hUr7fS+kqGzCtjtYiasdGrL8fMKVJO0XLGif4y9gIn/
LWTCGs/wcC8iosxVSXCpkciD6Wr7s5JlcmPRUSkXV+SiyEif9L/5YHVg2s6EaT87ynEcbTqj
j8nk9k06O5q5f7uDbDbH0TTF3NIqP1a3GRoIqGBIl4s4jgWCIV0Cj7vYPzzh4DjDaSYLQI1L
w1PvwttQi/55nko47qLs55hb/oXHe5Xd/TQH6QwAnjoXPm8dB6sbFXPKTnIwpEvLdR+tTU0A
bCaTbP3ezbvjizhV/7KrxT+G8hMUMqcVhQAAAABJRU5ErkJggg==
}

set ::icon_chooser::ImportedDates(sendto.png) {2012-12-14 22:39:32}

image create photo ::icon_chooser::images::sendto.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAAEcUlEQVRIiZVVXWgUVxg9987M
TjaT3eyOazab2I2zqakiCkFI17rY1lgLMY3g9iEt+mJBLVJFopRQxbRGBCFuC7IgoaIFnxSh
WtJVl5Y++GALWgj+lJJSlfVvY4xxYg2bePqw7mQ3MbV+8MHcuXfuOed+57sjSKIQKgCMRiIE
AAkAppTIpAIQxcvEQDjMBaqKvZs2ATWJBG07RpIASZBEla6z8OxM2HaM584tom1ZvF9XR5KT
G3t9Pnq6ugAAB0OhUsTikABw/vx5GppGvb5+cpWu67Qti7ZlMZVKMagoeVbz5rlp2zH6XQpt
y6IUgiQh/7oxgYbeOGJrqoD+WkA8P4jxsTEBAIHr19nQOx/Sfy0vfSZWM4VaeHBpGjO1tSiX
EgBgCoHTySSy2SzWrVsnnMMtIAQCbo4+GsPga3Od3UwhMPR8/o9cDu8/fZo/DwB4OJxD9G1/
Xkh/LQ6sfwbl5t+48cMsoL8W6c80dHV1TVIyq6rwe2A5GnqjAIDB3gOgqmDlj+0QioLR3y5g
3zuYrOrUdBsG3Y2NXN7SUlLtVz4l+fIlpaEWD0yvlx8AuKDruOX1AgDGBgZEyRcksWPHDsbc
bsckrkiEqVSKrkiEU7XJvr4+/nLoEFLV1SUbrU+nAQDfBYOsLCtzhAqSCAZN1tdPYNE14KB/
Vp6eyDMpFO71mzdxZ3xcqB6PhxcvzkddXRkAoMH6FfuFD0OGAQCI372Lqx4P7oyPC0cDSUhV
8tatKG07RtuO0XBLLplvOGMp8/4WnZ2dPOJyQfH5MPH4MQb3fomHD6KQMr9hS0s/rl4Fstlh
4Wg4e/YsW+NxVHV3AwDG793Dw6974I0ug75mDQDgdkcHODEhSip99OhRftrRAXP3buddLpPB
yOHDeDoyUqqhOHft2kVvOEypadPq8MpeetV4qfd27tzJVatWTWOh19eX3j8zxYskNzU10aUo
/CIQcOxoWxY/9/noikT+05rTrFoAMk2TQV3nzzU1/CmbxVA4jE6PxyFiCoGEaeJ0MonKtWud
97NVlYHyciaTyRerKUZrb2+nKiVXGwYH6+pK2Bc3VrGC4rnvg0HOUVVWaBr37Nkz+d9oa2uj
pincsmWO4+TLl5dw4cJKGqrkV37/jECF8UA4zKius0xKbiq6lRz2GzZsoK6rXLq0kgMDTQ5Q
IY8ceYM+j8o55RrToRBHLIsfVVRQl4LvNnp55sxChkIuzp5dwXQ6PR2gu7ubWlkZffE4Q/v3
U1+wgIqm8L3VAQ4OvjUNcHh4Wck4k4myrW0WdV1hY2ODA+D0QWjuXGbv34exciUqVqwoqdPE
gwcYOnYMz+7dxofra/HtN2FcuTKKzZv/RP+VJ6hYNA/Km80YPn4cLilx5sQJNDc3T/b+1Dh1
6hQ/2bgRT3I5GPE43IsXlxojl4PQtGnf/XPpEh6dPAmP34/hTGbm1p+aPT09NDweGtXVDGzd
yppEgjWJBKv37aMrEqF0ufjxtm0v7In/BTA1t2/fztbW1pc2GUn8C+Z/VtTZrQ8GAAAAAElF
TkSuQmCC
}

set ::icon_chooser::ImportedDates(PostBarGraphPointEvolution.png) {2019-11-14 20:04:16}

image create photo ::icon_chooser::images::PostBarGraphPointEvolution.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAABRElEQVRIia1VSY6DMBCsQkjk
C1zg/8/KHCZfwKeaA2OnaS/YSkqKgnG73VW9QEmImGBwWbDPDJJw4JAk2B8lgaSMITPHES9S
xQ0AmEgqMGS7EwA8NsBvEkB2MQDMcfEykQHADADcg6x1Inj+vclhywmnPX/AGjeVyq6uoCpU
DSlj3IO4X7XySjRT4Q3XVlK7QurFbBeBQY/tfNZzKatWTVAleReVrKPjpxzSMOmzyJze/6EW
OXxPVp9le3VSBduhX1fqxfKuyVg6fMvB1tGF9EhPjGCKzu3L0nzxhdCNpBGgUssfOMXuHRHN
4eol4h6k58LAoEXv5rBNAzQaBy4H2I7mgSidvewOTQbfwBQdS6JP9t26B0O9GdtvHWFaG162
Wkodd9fC2cBLlEy9x+dSxKvE2kCx74fHV8nZar7YPpiPL7jDHykaACPMYgZDAAAAAElFTkSu
QmCC
}

set ::icon_chooser::ImportedDates(intersect_lines_nodivide.png) {2004-11-18 21:53:33}

image create photo ::icon_chooser::images::intersect_lines_nodivide.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAAAp0lEQVRIic1VSRKAIAwrjP//
cjyIToW0FEWHnKBbuqEiLQAitMyyloh1yVRqWcfohz0E3OtW74OwLwEUWk6NwyKa11lMbIj/
V/sNunXk+7W2B9QcXKJ4x3pDy57yVzRpkk74exVp3aJIjk6X5Nm52J46EtCEvEVKxYdkf+38
lMSGPjs1ur3Vbym9mIUVHvw8PXiIxP8fxAOZOkpQ93Rg9zVRmj2bhbADFopQyib23rQAAAAA
SUVORK5CYII=
}

set ::icon_chooser::ImportedDates(user_save.png) {2006-02-13 21:49:11}

image create photo ::icon_chooser::images::user_save.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAAEAElEQVRIib1Va0xbZRh+egqF
woAFHVE0tRAuZSI6Z3Qjm85NM3RMZcMgbhrdlAVdjMxbZqKS7Icu8bZLxobGzIkLG8FdxK3C
uAzsRJwSmENnDWkDFBiXFQ7tOT097eMPRxUqxU3j8+s93/u+3/M83/nefMB0sOEFBj6+zEqk
JEucVnLhcGAlrK3sNHo6OmkP1/+xcrZ6M4+/iSk9AgBk2luQ0WPAEWNUIKmZTr+/xsyxcTFI
1lRY3ruF3+y7k0EJWl4n5dGpibPbttG28QZaVswjAGQvW/Fnwcm7kthQkEev6qX7stUpqqz9
FxkfIaCi+tgsqkLh+50LyK49VFu28vMSIVj5ZYRNBkqdDl3JTljrbYivTwD9DmoEIejABABo
WmmiIXkEkcfKYbSfhn6OguNpMXj0sUJKHg8BoHjLK8Hm/or1zxTxs4/2QlUV7Dc3o67+FFKu
mRva15PPFvHDoydpd/Rzw3ObZ/T13yLgoaJEoCExFVGxF3DHppm9BcCOd8lzO3jwxSh6PeLs
/wGXegFtBArvyYEmIiY0g7Ozk4ezjLRWbeFXKXp2bn8n9InI799G19s307bhRrY/cj0bFsVz
oLEx0HT/g6sDsQAAI70uDPXJkBQNZJcPiqSiuegplH96gH1Dw9z46tapDI76ejauXsKazASe
yM7iEw/lcch5iR7FQ7cskfRx/abnQ8s0t/1Ij1eh1THAtS+9wZJdHxMAtDM16MN1pc32YaTO
i0Xe8qX47jc7hPHR0pAszR1d7Oy2seZU4/90j/A346C4x3jmUDFGur9GuE6PsIgwRMYYsDCv
HHHXmWa/YrMRHH0rjbnLcqGdmwBoNPiprR79I7XweDRY+ZoTOn3cFZEEFfOH7QQVQBcN+FXA
PQaIgzgn6pCVv+ffO6AyQf+hQgjXxgMQAL+I0d5oxDy+G7qYWWYkFIE0PMzzRXdjYf4cNO1z
oPPWp8GLDqSdr8ZNGdGYGFcxPqQgJnsdFu3a/Y+JAoWWdTnMzOiB6iV8ih+K7IPk8kIRVbjH
VXhcKtyiCq/LB/3tq7D8YKUGAIzGJO4o24ul2Yth7elDQe4DsNlsgX2FySBcG4vWqj6IQzKc
gzLEIRnSiAppzAfFpUKe8GG0V0KxXYXFCzjFCQ6IE/zl5y7k3HcvoiJ1MCUb8EllFUwZ869u
DlLT5/NMewdln0rJI9EtS5RkiT6fl6rqpb1/kB98YeYJSxuTjMmhn4WZYDQaWVF9BMlGA0Rx
ArXtXbB2dyMrJQlx8MLc8SvCtAJylyxG6cslV04wiVpLK5utPVi1IB0HKquwds0amAyJ8Pr8
2FlWDkudGW2t32qumgAAHs4voDYiAlmmdDQ1t6Cpzhy03+8s0/+DyxsfhgAAAABJRU5ErkJg
gg==
}

set ::icon_chooser::ImportedDates(view_normals_surface.png) {2006-02-16 13:04:57}

image create photo ::icon_chooser::images::view_normals_surface.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAADxElEQVRIic2VfUjcdRzH37fp
Oaf5mMi8Bxc9GJQUhKxJk+Uewgnb3CytWMRgg4SNTdoKCo5S2qPb/KMx8pguH7pDa9kO/SMu
ISKsYJtCGJR2kc7tPO+c+bBTb6/+UG67uTaFEXvD75/P7/3+fD68P5/v9yvdiaJ3VjE+bkaS
BBbmMbR+/XrADJhY4t//jyAkg2HAEMEaGgoCViQpSpJyvs9lxZoMPaonJN2Rt6Oji/nR+2Fs
LIGqKmukCqwMDZkAE42N9aj/t36efC+L7PpV2O0plJdXzip8fw/xrDOX6emnqK2tn1/8xIln
FtdRdfUHdxe0tbWFf9jtZwmF0gAzU1NmnM4ULl+Opavr10ixuTqTIl4j+0Iev/+xgkDADFgI
hdbR1PTVLNnd7mbdxCY2U8wWisluygVMgAWwcO5cPSUlJXdv6/ChvLlRpnP8+JpF2v+/oKWl
YeFt2Wy5gJlLl2JxuX6aL5yeng4H29uj5lwy43CkAFb27n0rUpSTk0Ng0E9nh2HOKQs2WwKQ
AZg5fz6WgYHBW6Kdb++kYGYLm3mTBkcqlZUJgIWZGROtrTFh4hJJerFsNYPVPi1fGqclQhmp
EkiSQW73uDZsGLnVSvLzqRRRwmaK2cobtDYnA+mAmdOno5Ck/Pz8yP4//vAjitnBheZkwITf
vxa3O+nelvZ199PaGgNYCAbX4vFcWdgMqqoKcbl+YHBw8GHcpQcFr3eCXbteob09hYsXjRw5
UkFPzwI9uhfOnDnLgQMvMDqaGF7N2S8TlyuJigpx6tS79y6Ul5fH0aNHwyTfVT822ye0tcXd
lnB2lb1eE3v2xON0pgLWubiVQCCB7dvj6ezsml/M7XZz7NgxfvnuZwqOFPLSnwWsLl/J5/Up
4cTDwxnYbAmMjJiAdHy+QkKhTMBEc/Nympq+DCeOeDimRqY4216rg/aDynPla+myKKHZxyFa
8bq0/0c9dtGjTz9LVVaWUdLNOWWMHI40GQz7VFpaGpHTIEneK15erStV7PuPKNawTDOhGYXG
ZhSdGC2DjOr7wqNDsT3atDVeEgoGJZdrUsHgTaWlTWp01KmWFqekm3I4HBEFoiSpu6tb8dFx
utrtlfW5TBmWSsbE5epz/KXDxh4VvB6nGzdW6tq1p5We/q1iYpbJaBzX5GSNNm7cYZC2qLe3
l5qamvvtiVTXWMeKfY/zzdfxQOZtQ03j+vWXmZhIZvfu/7j2FwOfbxK7vYGTJ6MIBFKADLZt
E0lJ6fj9ww/2mPv94/T2zh6ksrIyPB7Pw3OP/AvCK2Kandhn2AAAAABJRU5ErkJggg==
}

set ::icon_chooser::ImportedDates(zoomin.png) {2006-03-01 12:35:26}

image create photo ::icon_chooser::images::zoomin.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAADdklEQVRIibWUX0xbZRjGf6ct
TVsofzYZasdIxpAhxMh0icYE4pLdTRazXezCG4IXGjXGUE1MNFliAtFs3rjemCzezRv2h2o0
skQCNxAhFEebCqMlwDptT2kpaIH+e71gp+PQFsTok3w35/ue5/me97zfq4gIGkwAw78uyUY6
hwEg9sN7NFjiKDuPGQDe/rFbAEzjd65Keej17S0RQUTovTYo6kpceq8NiohsUwCePnacN76+
QFn10ceMsdtXRGNqS+e4E3mpG0OTEo2tim7D6XJLedUhvpj/hMm5h6Jj3PVGCU4vMuwJAmx7
qPdH5fOhVQCuvNOlADDQ1yXemal/fqtSMO3+EHigSjKVJfdIx2wycP378by1juB0ucVe28DE
gw8513mKalslvzxc5tln3i/u8PLadZbqPuJM05eEA1lWjPBcjQXv3CycPfk49fidq9LYepqA
bwL7iTO0trUrJUNo6YtVpNg6cJUM+x/Zh+B0uSUaW5VobFVuDE2K0+XWXUF3JafLLT3nXiKV
yW2rKWAzG2k8Wpsvgs7h0tkXWVCTLKhJouZbBNUkSysb7HTREaYX1/hpRiWY+4rlWBgO32J0
Nl46QzwWxWY2Muu9xHLsD+6OdGC3GnWEfIab/edlrLKHtpZmQvFNMlmwW40oWwk+uPhKPoNJ
O9xxsReHbwL7kXq8/mUA1oHuznp9GQf6uiQyNyKRuREZ6Ova928r3pkpWZ//mZB/lAsfD5bu
IQ0H6aN/1UsHRcELLYXdLaUhPzRKYM8ETpdbnj/xFK+2N5LNPYqtEQFFUTAaFIY9Aabnfy9q
VtLA6XJLS0Md7c3H2EznyGSFnAi31c+wVlkot1TSKW9hMipYygx4ZpfwL4YLTPYsUVODg1Bs
i2Qqy7dT72KrsXHc8SQvVNUzn4jiTvVjr6jh1PqbNDU48C+GCzT2NAiqSULxDVb+TLMW+4tU
Kk2krIylcguRlQTx1CbKppV78QSOGmtRjZIl8nk98s3IMm0tzYQTKVaTabYyOe4v9LJlNlJR
UUXz4U+ptpVRV2XG65+lu7O+YF4WGNzsPy+Olg4AQv5Rxip7AKh74hC1tUfIZLdnj8loQFUj
hKMxgKLiOgNNuLH1dH4z4JvIv0Cf11M06p4TXjPYLa4Jn3zt8r4C+yGfwOf1yG/fXQb4T4QL
DP4v/A33Dy1LcoM9yAAAAABJRU5ErkJggg==
}

set ::icon_chooser::ImportedDates(note.png) {2006-01-20 17:17:27}

image create photo ::icon_chooser::images::note.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAABGUlEQVRIie2VXY7DIAyEP1AP
5Ryjp+EM9DI5RnMr7wP5MWCabNWHrrQjRUqMmQGPIWAQABDRfL+XSM5Z8SGiABFgyw9m3M4L
sYRUUQVVcs4D3t9Arc6hIQKqzSKKuK47OtZOCCE/Hh9YjYfQfOu6MJMRqtx4ltxW7jZgA3DL
bCeENWlk8reiLSvUDdflxGrINKJpSB1NKAPTVB7oygy2rJtpz+ce8nzYFPraO+y1wgWXrULg
cHpPTil1MrENNCo6z/OrlH848M08oCLCsn4I9O/LFvG5xq6JKKo7IYYcYOk71L0Ibl4QEd1b
3BBVmCZYltPbvt+BJR/hInkv8Aa5d1osTk2++sNLKbl8L4/mJ3C2Axh0x5tcfxA/VId+NDKA
Yi8AAAAASUVORK5CYII=
}

set ::icon_chooser::ImportedDates(surface_trim.png) {2004-11-18 21:53:33}

image create photo ::icon_chooser::images::surface_trim.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAABSUlEQVRIia1VO7LEIAyTdlKE
+x+WdHoFP4O9YZN5qkIwsrAFAB5ZENSHkhSHmJnsB+VH+aZdLEnkFWRGT+syegU2BwCwaSVY
OQSSPACQJFpkyD7oblQxmm2C5nECAByGvU+RF6A0YpkhqYmMlY2+5Gnbh1/QeLIEud3e7GHW
GatZ4vFDr7b4kmctKVDLaoWVIOkcbNVb0lm/E4+m0wUqmR2MhJ+VLWraLaamCVoN5hpHkiVg
eNji4/5g9FpBG8IFMUoVvy7wxzWFcRarnq1NwoC9BZ/DJmJwfiy8B62DIqzHxiQYZHckU7G1
FLpfFcXXNoFaV6JbbLJvVOlq50jY/tZTms/DqrorP4eYqt7uIEANqjf6IMhzIkMe4aGL5neA
vBz5uoMHR60st03eOepFgj1K0uHIlwetlCp+zicT/PCYBOyW4MX6/8UfVgvoVA+6g1YAAAAA
SUVORK5CYII=
}

set ::icon_chooser::ImportedDates(collapse_alltypes.png) {2006-02-14 23:39:16}

image create photo ::icon_chooser::images::collapse_alltypes.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAACvUlEQVRIic2VzW8MYRzHP89m
+qJa1rZECf8AcaiIl4g/wcVLXbxexE24VBo94VDJhoP0pJGKODSRSCTSmxBEaKMuSNjdFil2
t106tLs7M1+H2jHTnVZLIr6Xmfm9fH+/3/N8n2cgAAMgobExYQGUj5S4vSUPkWEVg3qu5PwP
39PV5SiUV9w1pdLJaWUyUt+1bNi5aGh2F37xn0alUp4AYgDj6REAvuZT1NTMBMcAzFMLgKaE
aG01Yf7AM/S++N5TqZQGBgYUZO7qcpTNeqEKZlaeFFHLzEQZfwhlpYmzY8p/HGG8lMHtnKa7
O8+nDyNMZEd4+zaCRULeQ59fL19Jw8MKDv6Xe7RYzFWuyh7zPQEB9Pc7GhryftuzL5AKwfXr
zuxdVlVCJalS8fjxcojIhDOiZzHmV5w/Q/Z9WpPH8qhvJqf3agG7kObQQTucDFDaXNLkkw+Q
i0HakFu+jpbmUZKX46xscTl5KhGuUDtYa+Id6zGDMRKt65CBxCqHeNxjw8Zl0SvkBVQpoeEX
0ps3XtSZiDTMuwdRzn8stDkQ3NDIjnp65lfKgooUCgUlk0llMplIgrt3Xe3dW9KdO+6fnUHP
81QsFuW6ri/doFQJTNrZWVZ7e0mvX3vByeeWdnCSqLspiJ/3FBIUCqKuDhoafLrqlwrc567K
Z4pQC3UdS6ANqA2HjY6K3t4pamrAKcPoO4uLFy2am2NVfFaI/KqryWdZ3BvT4BjslR6xexZW
f46mnQnyB+D0kTJr13ylsVF8+25o32fz6HE9ExOJyEn9AhqT3FsuTZ9bsG/mKB+dxtgGbXJx
4t9x9tSTM0tp2/6NE4e/4HmQvLyC1tUOtm38Jataygib3PMuU7cnqd/RiHXJqsQolfa4cM5m
29YiEtx/sIR9+xvYvTuGFP5/zIX5pDdbTYvmWIim/48rIYgfU1SfEEcao78AAAAASUVORK5C
YII=
}

set ::icon_chooser::ImportedDates(surface_divide_split.png) {2006-02-15 23:19:26}

image create photo ::icon_chooser::images::surface_divide_split.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAABLklEQVRIic1VSXLDMAwDPPn/
l5GDJG5anLrTTnhwYkoAuEkGghGAJAFsL/aeTZCE5j9sg7voLqnpAGTZPhF8YoZ6xTAaN6N4
W5HQ0yOvHhwt0EUIz6IaRmeQPc1pRfBShJr0XDSijAUFyAa6kguk5Yta4ga/UGyUiqAphPr9
rgD/ahJavFPMo+S0GWFqDlhqdQF90MNsjObBRykBWFlsr/06yPpAetNYEFEjNW7IaMwQy0IF
oIxGrtFmNDoMA0m7GKY0nWq78pW2T+RsMc0jx+uGJ57pwv1ZbHGM0Ya2YNO1EVzhMqr3UBVI
ERvfrtfxcCn7ViKbPP2kziSrId6L3BQy37RPRJYnJyDi98iuknNI/ozQI2SeSUIbKWbKdeer
wvJvpt3M3Y8FHh/Mv7M3dzyJF+QMQO0AAAAASUVORK5CYII=
}

set ::icon_chooser::ImportedDates(intersect_line_surface.png) {2006-02-16 13:39:46}

image create photo ::icon_chooser::images::intersect_line_surface.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAABFklEQVRIieVVSxYDIQgL83r/
M82cLF2gIwjodNfXsuhHNAQIChgT/SJJhJ+TqYcESRJ+G/ueCVmPiQhImtVPLeCHGPeiiBw2
sM1AFIsEAfVJyqmowQPrcLT/XbmoJEMWw09KW567IfZkTyRQmBKbIoxqNTBmLL7UpnSbJBMz
fSC0GqaYSftjleZ4Ate8IyPnFHcXVrHMgXLKshwSKs2rG0bIV4lUaD1NWrxrJ41xdyQk/9Hc
nVOsd7cTgu9PfjMVQANwHKx106kZ9Uu2ZWENe9fvfr/Aa3CZgWVt52k5NPdw6qlkEjjUTbcK
ALiuKwLOTCXtiT6H7WFc2nme7encz3+qlvvTPjOGKVnP+oMASWYRcCPpX7I3U3fGSnVikfIA
AAAASUVORK5CYII=
}

set ::icon_chooser::ImportedDates(folder.png) {2013-01-23 12:17:04}

image create photo ::icon_chooser::images::folder.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAAERklEQVRIidWUb0yWVRjGf/d5
zssLvCAgCCiovTpamblS00yzMnOtnDIzU1ttfmhtNdv61JYtYZX1pfVBV7mmbrlsS9TFLCuV
lJXZTKkEBYw0QwSB8eeF9+/znNMH8BVUZrbV1vXlec557uu57nPd97lhCByfI6Vfblx0ulgS
ZRogIy/XLn5mLsMgX21aZL/d10BzR6RRfqh42niu4cThJsTnyOKjFS9XfrO7Cke55QnXkjE6
+0MN6Eg4JnfPzkeJLgNIz84qk9ys1EBnTzR/qED+6LR2RoLUVZWbcE+3HK48UGaMJR63vPZp
XblUb3vSRsO9KKU4sLcORykirtmp07LTCPf3gBEWPDYVgNWv7D+mv9t30s5aeLtYYy2AKJGJ
43PeEyB4He2zI2Y1YrY+R0q//mj57khPJ4CYhGexBrRKBmXmjJFHnttVmvDs5xogxa85c66X
WDSRDApOzgZrAAi1t1Hx5tw9x+vtrxrg/Nl2mblwDqGOCxhr5eo0lBhyi6bIs2+9+7AGLCl+
29LSDCCAvYbg+OTFNZve6OmLd970of99yGdvrzLB2wpFKbEZeUUsW7F+w5pFwYQxQjzhAeAh
net31G4CkB3ly0zWqG4BrDEWXFcQBQ4WEKyxoXABq1+vUADaMwlxfBpAHEClpnC+qYvfGlov
2yvWnGftQ+N+yrulYKU2nmfBkYa6C1aM4HlGJpXkUlAwcUBh0Oa84LQZ81a+n6ONF5fa4+3M
vP9WiYZ7USKAw2Dw4NOj5WK4/8EZxb9olKFg3BgMHinpgUECGGtRIhhr0Y5iwzuVNcGSgoSO
hvrtfUvmS6ijOdnfANZYK0rEGmsDo0bzY1P32kOnO61uqr9oJ0w7K8bzRvT+TO1p60txGiJx
DwGKAd8N6pUAmv9mbf9jyJI542dNKwpUjMoMFAPDhgGibHtrx6loIHDXxp217j8S8DlSur18
+Z78QkN/56VhH3MKJ+DPnoJBjUC/AqUVNdVV4Vc/OLSkozd28PK+BvASrlXKwUlLFWsHTyAi
Pd1tlu42REQAq5RIJBSzSiWHRLIz/YFM0UKasnbsuqfuGJce8Pet23qiVwMYG0f5MtF+X7Lx
hvwEk7D83niJUHcfpS+8BOb6LVRyD3y/9PGPUzNypHpPZczn1CwdEDAuvjSHs6e6MAQITr0T
hWDMwHQyqp+CsRGKg9nUH9l1xV8jWGWHvRvXI3/SbDZsOfhJwrM1AxZ5Lp4Lrc19LFhxL6H2
c7hufIjBikBWYOAKDk1+6NoBjCG3aDJbN++tb2zu2vzA9OJOPWgCR/fXMr90Hm6kG+3T4NM3
LOzV8Gdkcq7+AnuPNG3LyUo9efhEs6cBWv5olWBJMemZmmi/K35/etKFIXy5zl5yrZQiFhOp
rvq58c+u2JZVj5ZEt3/RgIgwvTDL/zzW+q29hnxzEKJtvfFtTyyYfKziYNPIw+R/hb8AllHR
ES2uopYAAAAASUVORK5CYII=
}

set ::icon_chooser::ImportedDates(dimension_dist.png) {2004-11-18 21:53:33}

image create photo ::icon_chooser::images::dimension_dist.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAAAdElEQVRIiWNgIAOs2r/qPzn6
aA/+QzEyn4HhwJ0DWN3LRAcXwRwCDTNc4YYqjsvB2ADJnmBEWEnIEkYC8kMT4IwD5DiiXdqA
RS7JNtBeAyMDPHSIShrDM30MNYAcC9Qul0djeJAApFIbQ4xcgGIWHSvDoQoA7hgjUDL+uQwA
AAAASUVORK5CYII=
}

set ::icon_chooser::ImportedDates(folder.png) {2013-01-23 12:17:04}

image create photo ::icon_chooser::images::folder.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAAERklEQVRIidWUb0yWVRjGf/d5
zssLvCAgCCiovTpamblS00yzMnOtnDIzU1ttfmhtNdv61JYtYZX1pfVBV7mmbrlsS9TFLCuV
lJXZTKkEBYw0QwSB8eeF9+/znNMH8BVUZrbV1vXlec557uu57nPd97lhCByfI6Vfblx0ulgS
ZRogIy/XLn5mLsMgX21aZL/d10BzR6RRfqh42niu4cThJsTnyOKjFS9XfrO7Cke55QnXkjE6
+0MN6Eg4JnfPzkeJLgNIz84qk9ys1EBnTzR/qED+6LR2RoLUVZWbcE+3HK48UGaMJR63vPZp
XblUb3vSRsO9KKU4sLcORykirtmp07LTCPf3gBEWPDYVgNWv7D+mv9t30s5aeLtYYy2AKJGJ
43PeEyB4He2zI2Y1YrY+R0q//mj57khPJ4CYhGexBrRKBmXmjJFHnttVmvDs5xogxa85c66X
WDSRDApOzgZrAAi1t1Hx5tw9x+vtrxrg/Nl2mblwDqGOCxhr5eo0lBhyi6bIs2+9+7AGLCl+
29LSDCCAvYbg+OTFNZve6OmLd970of99yGdvrzLB2wpFKbEZeUUsW7F+w5pFwYQxQjzhAeAh
net31G4CkB3ly0zWqG4BrDEWXFcQBQ4WEKyxoXABq1+vUADaMwlxfBpAHEClpnC+qYvfGlov
2yvWnGftQ+N+yrulYKU2nmfBkYa6C1aM4HlGJpXkUlAwcUBh0Oa84LQZ81a+n6ONF5fa4+3M
vP9WiYZ7USKAw2Dw4NOj5WK4/8EZxb9olKFg3BgMHinpgUECGGtRIhhr0Y5iwzuVNcGSgoSO
hvrtfUvmS6ijOdnfANZYK0rEGmsDo0bzY1P32kOnO61uqr9oJ0w7K8bzRvT+TO1p60txGiJx
DwGKAd8N6pUAmv9mbf9jyJI542dNKwpUjMoMFAPDhgGibHtrx6loIHDXxp217j8S8DlSur18
+Z78QkN/56VhH3MKJ+DPnoJBjUC/AqUVNdVV4Vc/OLSkozd28PK+BvASrlXKwUlLFWsHTyAi
Pd1tlu42REQAq5RIJBSzSiWHRLIz/YFM0UKasnbsuqfuGJce8Pet23qiVwMYG0f5MtF+X7Lx
hvwEk7D83niJUHcfpS+8BOb6LVRyD3y/9PGPUzNypHpPZczn1CwdEDAuvjSHs6e6MAQITr0T
hWDMwHQyqp+CsRGKg9nUH9l1xV8jWGWHvRvXI3/SbDZsOfhJwrM1AxZ5Lp4Lrc19LFhxL6H2
c7hufIjBikBWYOAKDk1+6NoBjCG3aDJbN++tb2zu2vzA9OJOPWgCR/fXMr90Hm6kG+3T4NM3
LOzV8Gdkcq7+AnuPNG3LyUo9efhEs6cBWv5olWBJMemZmmi/K35/etKFIXy5zl5yrZQiFhOp
rvq58c+u2JZVj5ZEt3/RgIgwvTDL/zzW+q29hnxzEKJtvfFtTyyYfKziYNPIw+R/hb8AllHR
ES2uopYAAAAASUVORK5CYII=
}

set ::icon_chooser::ImportedDates(align_text_left.png) {2006-02-15 11:38:42}

image create photo ::icon_chooser::images::align_text_left.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAAAdElEQVRIie2T0QnAIAxEn6WL
ZP+hbhT7JbQhLVgtqPSBIMTcJSHCiQQgCYCNWyTFzy4CBTN7Equl3qM+0I9ULr5ij5kBL2r6
PmFAwiWIGHisKyQsSG450UrurRVJSk9xH8ythl6zewflV4Zu/B0EmvN3MD8HI/E2P9mrcMEA
AAAASUVORK5CYII=
}

set ::icon_chooser::ImportedDates(PantallaInfo.png) {2010-02-12 12:57:44}

image create photo ::icon_chooser::images::PantallaInfo.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAABQklEQVRIidVUMY6DMBAcI76A
XNKcouQNPOFqdL9IRZf20qXiFyg1T+AN0Vk0lCiP2BQYZOFdg0+54qZBwM7srmfXiogwIwWA
XHdU1hkUESHXHQGYXmYkVWMIAFWNocRy4IW5SACgagxZQcp1R1VjSBERTlfj0cJSHFJbFu7n
JwCgrDO0vWXMHz2pss68H+r4/cNmF6sSiwKmxvcEt70luOAKd2tOpOBhLOSS1kr38xO57vjT
iG06miB6+jZCeroa+vzYF3z7OijWh2EslllfnxTrwxzMYbOHtfMsQXJZJOS6W0jBHso6WwLE
0ZAWhcPjclB/P0uxiB6lWKQA2CvuHXhcnFHdmu/1QHGOumj76entQkgUwLIn7r9QMtEDThzg
90qKDSbgMIxFcK2iEnBtS7fCr45ob5Its4Mm7xHYwv/f5Be/uJnw/NYsdAAAAABJRU5ErkJg
gg==
}

set ::icon_chooser::ImportedDates(border_vertical.png) {2004-11-18 21:53:33}

image create photo ::icon_chooser::images::border_vertical.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAAAjUlEQVRIie2UUQrDIBBEn73J
3P9QcxT7ExcN2sSShJD2gSjr6C7jIlQkANsAvBiySLLtVtZcICnbThuXzdLkKEga55jfOI5U
Fp2Kw50qNl/T+QduyKgJupbCFS795IEHkuvfrTfv1ARNPy6idSyQlAF2aGL/9Fe7vC0+elyP
DU3wf4PvEhQr1vOs5hm8AVUZdXHikrvtAAAAAElFTkSuQmCC
}

set ::icon_chooser::ImportedDates(dimension_arc.png) {2006-02-14 21:00:15}

image create photo ::icon_chooser::images::dimension_arc.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAABn0lEQVRIibVUS4rCQBB9HQdi
SAsu3AlGt+LCE3gCD+G1PIHncKMIuteNoCIiRFAwwdifmoUjk3EyMZ3RghCSvF9Vdxp4ZbH4
w36/pyiKUKlUjESInmOklLRYLEgpRUIIOp1OGVh3A6M4P+pHg4PBgNrtNoQQ2O126HQ6WC6X
KBaLsG0bs9kst3eWIaSwMzilOqQJxIlE/40KIDbWyWRCWmtwzrHZbKCUwuFwQK/XY/1+n7rd
LobD4TchCAJyXZet12vSWsNxHMznczSbTRyPR3ieB9/3Mzf3WC9oLo964nsrBcgSviUSEoEm
lRQt15Qe906ySGJeIQRdLhe4rgvLspiUkq7X643AbhTHcVgYhlQoFGDbNlNK0fl8RqlUQhRF
UEqBMZZsMB6PSWsNz/Ow3W4RhiFqtRqCIEC5XMZqtUK9XsdoNEKr1QLnHL7vg3MOKSUajQam
0ymq1erf/ccuaK1JCGG0H1KK4uJZyCYG+Vb7XcJ38ZcYUOxuFObDBIwcv2FWgzTheEe/cF+H
BWPvPvTigQyMnmMzzPRRhBmtwyfy79oE7Smp+AAAAABJRU5ErkJggg==
}

set ::icon_chooser::ImportedDates(zframe.png) {2006-03-01 12:46:29}

image create photo ::icon_chooser::images::zframe.png -data {
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAAGXcA1uAAADRUlEQVRIibWTT2hUVxTGf/fN
gA52Yk2TBjspQ0fzHpMmUpEGukkptDUbSSgtbposFLpo6cpFcVEXmYVrKclGu6kDRaTSYKUJ
CYkjilixnUWcCUk1MXSok/cyU6N1HCcvp4vJe5P5k0xT7AcXLvd+53z3O/ccJSI40AB+XXgk
hmGIEhEmhgfEDvWhqmhTyWUB0JJT5+T6nenilYggIgyevyrPV9dk8PxVEZHSxbnYopz4PiG6
rpcuEpNnxSE4q0xxIzRnc+XWnBTsEksDiERjsmt3I9dnM8yl/xYAr8MYn7Yo2ML+3QXaejqL
EV99+DI7nz3EX0jzWU+nKjKH+mX05x/+/as2g1Z5YD1+LoZhyIKVE8MwxDAMiURjbtYyhUg0
Jv7mIH9kczjHu3Z46Gz180nXXlWl8M7KtzRoTwi/9hKvN/p4o9nHwWADM7OzJZJT8nw6LonJ
szWNblzuph7xxVVp2wGRaEwKtkjBFrlya66spK7pjd2p67roui7z5lPRdV3MlbzUNC0izD58
Irquy2TCksmEJVNJS+7M/+W2t4iUugwg/mCFo6cv81N8CQCloHWPb3MP2YzFhZNH8GgKpWCH
V8Pv85QFuGWdGB6Qmw3H6QgbpLLPWLXB7/Og8o849kGHcgK8Drn74xME7t5m0Vwma70CwGOg
q2kZ6ChJjA/1Sz4dl3w6LuND/XV/22uH+rh39zap5DXe//w7RT1sp4/+Uy9tF976lCKqWmod
X3/67pa2t3QQicbkrf17ee/gPuy1ddtOIKCUwqMppn67R/z3P2uKbTo9kWhMwsEW2kOtHDrQ
zoKZY97MMb+0vswcC2aOQwfaaQ+1Eg621HS5ZYnaggFSmTxnLt5g0cpRGa2AMxdvkMrkaQsG
SD5IV+XYUuC++ZRUNsc3Xxymd3AEe61cwqMpRk718uXQGIGKGasr0NW0zC/JGTrCBgAjp3oB
OHr6MgAXTh5xuYE9O5lOzqxPTYXLyk+eGB6QQLgbgFTyGjcbjgPQ0tRIc/OrrNprxZd5NExz
ibSVcR90uOejqk8uG/5AuJt9b77tXm6cwLHRSzXbrVbSKoHK5E5iO9RXN0E9uA7GRi+J5/6P
AC8kcZXA/4V/ALONYldoNy5HAAAAAElFTkSuQmCC
}

array set preferences {toolbar_one_col 1}
